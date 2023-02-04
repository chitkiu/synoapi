
import 'dart:convert';

import 'package:dio/dio.dart';

import '../../const.dart';
import './ns_models.dart' as ns_model;
import '../../model.dart' as model;
import '../../context.dart';

class NoteStationAPI {
  final session = 'NoteStation';
  final endpoint = '/webapi';
  final APIContext _cntx;

  late final Setting setting;
  late final Info info;
  late final Notebook notebook;
  late final Tag tag;
  late final Shortcut shortcut;
  late final Todo todo;
  late final Smart smart;
  late final Note note;

  NoteStationAPI(this._cntx) {
    setting = Setting(this);
    info = Info(this);
    notebook = Notebook(this);
    tag = Tag(this);
    shortcut = Shortcut(this);
    todo = Todo(this);
    smart = Smart(this);
    note = Note(this);
  }

}

class Setting {
  final endpoint = '/entry.cgi';
  final api = Syno.NoteStation.Setting;
  final NoteStationAPI _parentApi;

  Setting(this._parentApi);

  Future<Response<String>> getSettingsInfoRaw({int? version}) {
    final param = {
      'api': api,
      'version': version ?? _parentApi._cntx.maxApiVersion(api),
      'method': 'get',
    };

    final uri = _parentApi._cntx.buildUri(_parentApi.endpoint + endpoint, param);
    return _parentApi._cntx.c.getUri(uri);
  }

  Future<model.APIResponse<ns_model.NoteStationSettings>> getSettingsInfo({int? version}) {
    return getSettingsInfoRaw(version: version).then((resp) {
      return model.APIResponse.fromJson(
          jsonDecode(resp.data!), (json) => ns_model.NoteStationSettings.fromJson(json));
    });
  }
}

class Info {
  final endpoint = '/entry.cgi';
  final api = Syno.NoteStation.Info;
  final NoteStationAPI _parentApi;

  Info(this._parentApi);

  Future<Response<String>> getInfoRaw({int? version}) {
    final param = {
      'api': api,
      'version': version ?? _parentApi._cntx.maxApiVersion(api),
      'method': 'get',
    };

    final uri = _parentApi._cntx.buildUri(_parentApi.endpoint + endpoint, param);
    return _parentApi._cntx.c.getUri(uri);
  }

  Future<model.APIResponse<ns_model.NoteStationInfo>> getInfo({int? version}) {
    return getInfoRaw(version: version).then((resp) {
      return model.APIResponse.fromJson(
          jsonDecode(resp.data!), (json) => ns_model.NoteStationInfo.fromJson(json));
    });
  }
}

class Notebook {
  final endpoint = '/entry.cgi';
  final api = Syno.NoteStation.Notebook;
  final NoteStationAPI _parentApi;

  Notebook(this._parentApi);

  Future<Response<String>> getNotebookListRaw({int? version}) {
    final param = {
      'api': api,
      'version': version ?? _parentApi._cntx.maxApiVersion(api),
      'method': 'list',
    };

    final uri = _parentApi._cntx.buildUri(_parentApi.endpoint + endpoint, param);
    return _parentApi._cntx.c.getUri(uri);
  }

  Future<model.APIResponse<ns_model.NoteStationNotebookList>> getNotebookList({int? version}) {
    return getNotebookListRaw(version: version).then((resp) {
      return model.APIResponse.fromJson(
          jsonDecode(resp.data!), (json) => ns_model.NoteStationNotebookList.fromJson(json));
    });
  }
}

class Tag {
  final endpoint = '/entry.cgi';
  final api = Syno.NoteStation.Tag;
  final NoteStationAPI _parentApi;

  Tag(this._parentApi);

  Future<Response<String>> getTagListRaw({int? version}) {
    final param = {
      'api': api,
      'version': version ?? _parentApi._cntx.maxApiVersion(api),
      'method': 'list',
    };

    final uri = _parentApi._cntx.buildUri(_parentApi.endpoint + endpoint, param);
    return _parentApi._cntx.c.getUri(uri);
  }
}

class Shortcut {
  final endpoint = '/entry.cgi';
  final api = Syno.NoteStation.Shortcut;
  final NoteStationAPI _parentApi;

  Shortcut(this._parentApi);

  Future<Response<String>> getShortcutListRaw({int? version}) {
    final param = {
      'api': api,
      'version': version ?? _parentApi._cntx.maxApiVersion(api),
      'method': 'list',
    };

    final uri = _parentApi._cntx.buildUri(_parentApi.endpoint + endpoint, param);
    return _parentApi._cntx.c.getUri(uri);
  }
}

class Todo {
  final endpoint = '/entry.cgi';
  final api = Syno.NoteStation.Todo;
  final NoteStationAPI _parentApi;

  Todo(this._parentApi);

  Future<Response<String>> getTodoListRaw({int? version}) {
    final param = {
      'api': api,
      'version': version ?? _parentApi._cntx.maxApiVersion(api),
      'method': 'list',
    };

    final uri = _parentApi._cntx.buildUri(_parentApi.endpoint + endpoint, param);
    return _parentApi._cntx.c.getUri(uri);
  }
}

class Smart {
  final endpoint = '/entry.cgi';
  final api = Syno.NoteStation.Smart;
  final NoteStationAPI _parentApi;

  Smart(this._parentApi);

  Future<Response<String>> getSmartListRaw({int? version}) {
    final param = {
      'api': api,
      'version': version ?? _parentApi._cntx.maxApiVersion(api),
      'method': 'list',
    };

    final uri = _parentApi._cntx.buildUri(_parentApi.endpoint + endpoint, param);
    return _parentApi._cntx.c.getUri(uri);
  }
}

class Note {
  final endpoint = '/entry.cgi';
  final api = Syno.NoteStation.Note;
  final NoteStationAPI _parentApi;

  Note(this._parentApi);

  Future<Response<String>> getNoteListRaw({int? version}) {
    final param = {
      'api': api,
      'version': version ?? _parentApi._cntx.maxApiVersion(api),
      'method': 'list',
    };

    final uri = _parentApi._cntx.buildUri(_parentApi.endpoint + endpoint, param);
    return _parentApi._cntx.c.getUri(uri);
  }

  Future<model.APIResponse<ns_model.NoteStationNoteList>> getNoteList({int? version}) {
    return getNoteListRaw(version: version).then((resp) {
      return model.APIResponse.fromJson(
          jsonDecode(resp.data!), (json) => ns_model.NoteStationNoteList.fromJson(json));
    });
  }

  /**
   * noteId is object_id from note list
   *
   */
  Future<Response<String>> getSpecificNoteInfoRaw(String noteId, {int? version}) {
    final param = {
      'api': api,
      'version': version ?? _parentApi._cntx.maxApiVersion(api),
      'method': 'get',
      'object_id': noteId,
    };

    final uri = _parentApi._cntx.buildUri(_parentApi.endpoint + endpoint, param);
    return _parentApi._cntx.c.getUri(uri);
  }

  Future<model.APIResponse<ns_model.NoteStationNoteDataInfo>> getSpecificNoteInfo(String noteId, {int? version}) {
    return getSpecificNoteInfoRaw(noteId, version: version).then((resp) {
      return model.APIResponse.fromJson(
          jsonDecode(resp.data!), (json) => ns_model.NoteStationNoteDataInfo.fromJson(json));
    });
  }
}
