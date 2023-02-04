import 'package:dio/dio.dart';

import '../../../const.dart';
import '../notestation.dart';

class Tag {
  final endpoint = '/entry.cgi';
  final api = Syno.NoteStation.Tag;
  final NoteStationAPI _parentApi;

  Tag(this._parentApi);

  Future<Response<String>> getTagListRaw({int? version}) {
    final param = {
      'api': api,
      'version': version ?? _parentApi.maxApiVersion(api),
      'method': 'list',
    };

    final uri = _parentApi.buildUri(_parentApi.endpoint + endpoint, param);
    return _parentApi.getUri(uri);
  }
}
