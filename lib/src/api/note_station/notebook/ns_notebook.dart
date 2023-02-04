import 'dart:convert';

import 'package:dio/dio.dart';

import '../../../api_response.dart';
import '../../../const.dart';
import '../notestation.dart';
import 'models/ns_notebook_models.dart';

class Notebook {
  final endpoint = '/entry.cgi';
  final api = Syno.NoteStation.Notebook;
  final NoteStationAPI _parentApi;

  Notebook(this._parentApi);

  Future<Response<String>> getNotebookListRaw({int? version}) {
    final param = {
      'api': api,
      'version': version ?? _parentApi.maxApiVersion(api),
      'method': 'list',
    };

    final uri = _parentApi.buildUri(_parentApi.endpoint + endpoint, param);
    return _parentApi.getUri(uri);
  }

  Future<APIResponse<NoteStationNotebookList>> getNotebookList({int? version}) {
    return getNotebookListRaw(version: version).then((resp) {
      return APIResponse.fromJson(jsonDecode(resp.data!),
          (json) => NoteStationNotebookList.fromJson(json));
    });
  }
}
