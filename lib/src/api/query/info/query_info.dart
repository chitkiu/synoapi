import 'dart:convert';

import 'package:dio/dio.dart';

import '../../../api_response.dart';
import '../../../const.dart';
import '../query.dart';
import 'models/query_info_models.dart';

class Info {
  final QueryAPI _parentApi;

  Info(this._parentApi);

  Future<Response<String>> apiInfoRaw({int? version, String query = 'all'}) async {
    final param = {
      'api': Syno.API.Info,
      'version':
      version == null ? _parentApi.maxApiVersion(Syno.API.Info, defaultVersion: 1).toString() : version.toString(),
      'query': query,
      'method': 'query'
    };

    final uri = _parentApi.buildUri(_parentApi.endpoint, param);
    return _parentApi.getUri(uri);
  }

  Future<APIResponse<Map<String, APIInfoQuery>>> apiInfo({int? version, String query = 'all'}) async {
    return apiInfoRaw(version: version).then((resp) {
      return APIResponse<Map<String, APIInfoQuery>>.fromJson(jsonDecode(resp.data!), (data) {
        var result = <String, APIInfoQuery>{};
        data.forEach((key, value) {
          result[key] = APIInfoQuery.fromJson(value);
        });
        return result;
      });
    });
  }
}
