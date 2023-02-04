import 'package:dio/dio.dart';

import '../../../const.dart';
import '../notestation.dart';

class Smart {
  final endpoint = '/entry.cgi';
  final api = Syno.NoteStation.Smart;
  final NoteStationAPI _parentApi;

  Smart(this._parentApi);

  Future<Response<String>> getSmartListRaw({int? version}) {
    final param = {
      'api': api,
      'version': version ?? _parentApi.maxApiVersion(api),
      'method': 'list',
    };

    final uri = _parentApi.buildUri(_parentApi.endpoint + endpoint, param);
    return _parentApi.getUri(uri);
  }
}
