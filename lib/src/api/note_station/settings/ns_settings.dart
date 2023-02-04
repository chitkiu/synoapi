import 'dart:convert';

import 'package:dio/dio.dart';

import '../../../api_response.dart';
import '../../../const.dart';
import '../notestation.dart';
import 'models/ns_settings_models.dart';

class Setting {
  final endpoint = '/entry.cgi';
  final api = Syno.NoteStation.Setting;
  final NoteStationAPI _parentApi;

  Setting(this._parentApi);

  Future<Response<String>> getSettingsInfoRaw({int? version}) {
    final param = {
      'api': api,
      'version': version ?? _parentApi.maxApiVersion(api),
      'method': 'get',
    };

    final uri = _parentApi.buildUri(_parentApi.endpoint + endpoint, param);
    return _parentApi.getUri(uri);
  }

  Future<APIResponse<NoteStationSettings>> getSettingsInfo({int? version}) {
    return getSettingsInfoRaw(version: version).then((resp) {
      return APIResponse.fromJson(
          jsonDecode(resp.data!), (json) => NoteStationSettings.fromJson(json));
    });
  }
}
