import 'dart:convert';

import 'package:dio/dio.dart';

import '../../../api_response.dart';
import '../../../const.dart';
import '../../../context.dart';
import '../downloadstation.dart';
import 'models/ds_statistic_model.dart';

class Statistic {
  final endpoint = '/statistic.cgi';
  final DownloadStationAPI _parentApi;
  late final APIContext _cntx;

  Statistic(this._parentApi) : _cntx = _parentApi.cntx;

  Future<Response<String>> getInfoRaw({int? version}) {
    final param = {
      'api': Syno.DownloadStation.Statistic,
      'version': version ?? _cntx.maxApiVersion(Syno.DownloadStation.Statistic),
      'method': 'getinfo',
    };

    final uri = _cntx.buildUri(_parentApi.endpoint + endpoint, param);
    return _cntx.c.getUri(uri);
  }

  Future<APIResponse<DownloadStationStatisticGetInfo>> getInfo(
      {int? version}) {
    return getInfoRaw(version: version).then((resp) {
      return APIResponse.fromJson(jsonDecode(resp.data!),
              (json) => DownloadStationStatisticGetInfo.fromJson(json));
    });
  }
}
