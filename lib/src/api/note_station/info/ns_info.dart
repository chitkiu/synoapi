import 'dart:convert';

import 'package:dio/dio.dart';

import '../../../api_response.dart';
import '../../../const.dart';
import '../notestation.dart';
import 'models/ns_info_models.dart';

class Info {
  final endpoint = '/entry.cgi';
  final api = Syno.NoteStation.Info;
  final NoteStationAPI _parentApi;

  Info(this._parentApi);

  Future<Response<String>> getInfoRaw({int? version}) {
    final param = {
      'api': api,
      'version': version ?? _parentApi.maxApiVersion(api),
      'method': 'get',
    };

    final uri = _parentApi.buildUri(_parentApi.endpoint + endpoint, param);
    return _parentApi.getUri(uri);
  }

  Future<APIResponse<NoteStationInfo>> getInfo({int? version}) {
    return getInfoRaw(version: version).then((resp) {
      return APIResponse.fromJson(
          jsonDecode(resp.data!), (json) => NoteStationInfo.fromJson(json));
    });
  }
}
