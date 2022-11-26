import 'dart:convert';

import 'package:dio/dio.dart';

import '../../synoapi.dart';
import '../context.dart';
import '../model.dart' as model;

class FileStationAPI {
  final session = 'FileStation';
  final endpoint = '/webapi';
  final APIContext _cntx;

  // sub APIs
  late final List _list;

  FileStationAPI(this._cntx) {
    _list = List(this);
  }

  List get list {
    return _list;
  }
}

class List {

  final endpoint = '/entry.cgi';
  final FileStationAPI _parentApi;

  List(this._parentApi);

  Future<Response<String>> listSharedFolderRaw({int? version, int offset = 0}) {
    final param = {
      'offset': offset,
      'api': Syno.FileStation.List,
      'version': version ??
          _parentApi._cntx.maxApiVersion(Syno.FileStation.List),
      'method': 'list_share',
      '_sid': _parentApi._cntx.appSid[_parentApi.session]
    };

    final uri = _parentApi._cntx.buildUri(
        _parentApi.endpoint + endpoint, param);
    return _parentApi._cntx.c.getUri(uri);
  }

  Future<model.APIResponse<model.FileStationSharedFolderList>> listSharedFolder(
      {int? version,
        int offset = 0}) {
    return listSharedFolderRaw(version: version, offset: offset).then((resp) {
      return model.APIResponse.fromJson(
          jsonDecode(resp.data!), (json) =>
          model.FileStationSharedFolderList.fromJson(json));
    });
  }

  Future<Response<String>> listFolderFileRaw(String path,
      {int? version,
        int offset = 0}) {
    final param = {
      'offset': offset,
      'api': Syno.FileStation.List,
      'version': version ??
          _parentApi._cntx.maxApiVersion(Syno.FileStation.List),
      'method': 'list',
      'folder_path': path,
      '_sid': _parentApi._cntx.appSid[_parentApi.session],
    };

    final uri = _parentApi._cntx.buildUri(
        _parentApi.endpoint + endpoint, param);
    return _parentApi._cntx.c.getUri(uri);
  }

  Future<model.APIResponse<model.FileStationFolderFileList>> listFolderFile(
      String path,
      {int? version,
        int offset = 0}) {
    return listFolderFileRaw(path, version: version, offset: offset).then((
        resp) {
      return model.APIResponse.fromJson(
          jsonDecode(resp.data!), (json) =>
          model.FileStationFolderFileList.fromJson(json));
    });
  }
}
