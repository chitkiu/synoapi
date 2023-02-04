import 'dart:convert';

import 'package:dio/dio.dart';

import '../../../api_response.dart';
import '../../../const.dart';
import '../downloadstation.dart';
import 'models/ds_schedule_model.dart';

class Schedule {
  final endpoint = '/schedule.cgi';
  final DownloadStationAPI _parentApi;

  Schedule(this._parentApi);

  Future<Response<String>> getConfigRaw({int? version}) {
    final param = {
      'api': Syno.DownloadStation.Schedule,
      'version': version ??
          _parentApi.cntx.maxApiVersion(Syno.DownloadStation.Schedule),
      'method': 'getconfig',
    };

    final uri =
    _parentApi.cntx.buildUri(_parentApi.endpoint + endpoint, param);
    return _parentApi.cntx.c.getUri(uri);
  }

  Future<APIResponse<DownloadStationScheduleGetConfig>>
  scheduleGetConfig({int? version}) {
    return getConfigRaw(version: version).then((resp) {
      return APIResponse.fromJson(jsonDecode(resp.data!),
              (json) => DownloadStationScheduleGetConfig.fromJson(json));
    });
  }

  Future<Response<String>> setConfigRaw(bool enabled, bool emuleEnabled,
      {int? version}) {
    final param = {
      'enabled': enabled,
      'emule_enabled': emuleEnabled,
      'api': Syno.DownloadStation.Schedule,
      'version': version ??
          _parentApi.cntx.maxApiVersion(Syno.DownloadStation.Schedule),
      'method': 'setconfig',
    };

    final uri =
    _parentApi.cntx.buildUri(_parentApi.endpoint + endpoint, param);
    return _parentApi.cntx.c.getUri(uri);
  }

  Future<APIResponse<void>> scheduleSetConfig(
      bool enabled, bool emuleEnabled,
      {int? version}) {
    return setConfigRaw(enabled, emuleEnabled, version: version).then((resp) {
      return APIResponse.fromJson(jsonDecode(resp.data!), (json) {});
    });
  }
}
