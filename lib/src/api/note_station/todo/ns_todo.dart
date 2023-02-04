import 'package:dio/dio.dart';

import '../../../const.dart';
import '../notestation.dart';

class Todo {
  final endpoint = '/entry.cgi';
  final api = Syno.NoteStation.Todo;
  final NoteStationAPI _parentApi;

  Todo(this._parentApi);

  Future<Response<String>> getTodoListRaw({int? version}) {
    final param = {
      'api': api,
      'version': version ?? _parentApi.maxApiVersion(api),
      'method': 'list',
    };

    final uri = _parentApi.buildUri(_parentApi.endpoint + endpoint, param);
    return _parentApi.getUri(uri);
  }
}
