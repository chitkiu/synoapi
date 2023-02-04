import 'package:dio/dio.dart';

import '../../../const.dart';
import '../notestation.dart';

class Shortcut {
  final endpoint = '/entry.cgi';
  final api = Syno.NoteStation.Shortcut;
  final NoteStationAPI _parentApi;

  Shortcut(this._parentApi);

  Future<Response<String>> getShortcutListRaw({int? version}) {
    final param = {
      'api': api,
      'version': version ?? _parentApi.maxApiVersion(api),
      'method': 'list',
    };

    final uri = _parentApi.buildUri(_parentApi.endpoint + endpoint, param);
    return _parentApi.getUri(uri);
  }
}
