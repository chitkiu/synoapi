import 'dart:convert';

import 'package:dio/dio.dart';

import '../../../api_response.dart';
import '../../../const.dart';
import '../notestation.dart';
import 'models/ns_note_models.dart';

class Note {
  final endpoint = '/entry.cgi';
  final api = Syno.NoteStation.Note;
  final NoteStationAPI _parentApi;

  Note(this._parentApi);

  Future<Response<String>> getNoteListRaw({int? version}) {
    final param = {
      'api': api,
      'version': version ?? _parentApi.maxApiVersion(api),
      'method': 'list',
    };

    final uri = _parentApi.buildUri(_parentApi.endpoint + endpoint, param);
    return _parentApi.getUri(uri);
  }

  Future<APIResponse<NoteStationNoteList>> getNoteList({int? version}) {
    return getNoteListRaw(version: version).then((resp) {
      return APIResponse.fromJson(
          jsonDecode(resp.data!), (json) => NoteStationNoteList.fromJson(json));
    });
  }

  /**
   * noteId is object_id from note list
   *
   */
  Future<Response<String>> getSpecificNoteInfoRaw(String noteId, {int? version}) {
    final param = {
      'api': api,
      'version': version ?? _parentApi.maxApiVersion(api),
      'method': 'get',
      'object_id': noteId,
    };

    final uri = _parentApi.buildUri(_parentApi.endpoint + endpoint, param);
    return _parentApi.getUri(uri);
  }

  Future<APIResponse<NoteStationNoteDataInfo>> getSpecificNoteInfo(String noteId, {int? version}) {
    return getSpecificNoteInfoRaw(noteId, version: version).then((resp) {
      return APIResponse.fromJson(
          jsonDecode(resp.data!), (json) => NoteStationNoteDataInfo.fromJson(json));
    });
  }
}
