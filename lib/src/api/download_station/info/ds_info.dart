import 'dart:convert';

import 'package:dio/dio.dart';

import '../../../api_response.dart';
import '../../../const.dart';
import '../downloadstation.dart';
import 'models/ds_info_models.dart';

class Info {
  final endpoint = '/info.cgi';
  final DownloadStationAPI _parentApi;

  Info(this._parentApi);

  Future<Response<String>> getInfoRaw({int? version}) {
    final param = {
      'api': Syno.DownloadStation.Info,
      'version':
      version ?? _parentApi.cntx.maxApiVersion(Syno.DownloadStation.Info),
      'method': 'getinfo',
    };

    final uri =
    _parentApi.cntx.buildUri(_parentApi.endpoint + endpoint, param);
    return _parentApi.cntx.c.getUri(uri);
  }

  Future<APIResponse<DownloadStationInfoGetInfo>> getInfo(
      {int? version}) {
    return getInfoRaw(version: version).then((resp) {
      return APIResponse.fromJson(jsonDecode(resp.data!),
              (json) => DownloadStationInfoGetInfo.fromJson(json));
    });
  }

  Future<Response<String>> getConfigRaw({int? version}) {
    final param = {
      'api': Syno.DownloadStation.Info,
      'version':
      version ?? _parentApi.cntx.maxApiVersion(Syno.DownloadStation.Info),
      'method': 'getconfig',
    };

    final uri = _parentApi.cntx.buildUri(_parentApi.session + endpoint, param);
    return _parentApi.cntx.c.getUri(uri);
  }

  Future<APIResponse<DownloadStationInfoGetConfig>> getConfig(
      {int? version}) {
    return getConfigRaw(version: version).then((resp) {
      return APIResponse.fromJson(jsonDecode(resp.data!),
              (json) => DownloadStationInfoGetConfig.fromJson(json));
    });
  }

  Future<Response<String>> setServerConfigRaw(Map<String, String> config,
      {int? version}) {
    final param = {
      'api': Syno.DownloadStation.Info,
      'version':
      version ?? _parentApi.cntx.maxApiVersion(Syno.DownloadStation.Info),
      'method': 'setserverconfig',
    };
    param.addAll(config);
    param.removeWhere((key, value) => value == null);

    final uri = _parentApi.cntx.buildUri(_parentApi.session + endpoint, param);
    return _parentApi.cntx.c.getUri(uri);
  }

  Future<APIResponse<void>> setServerConfig(Map<String, String> config,
      {int? version}) {
    return setServerConfigRaw(config, version: version).then((resp) {
      return APIResponse.fromJson(jsonDecode(resp.data!), (json) {});
    });
  }
}
