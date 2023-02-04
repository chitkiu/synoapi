import 'dart:convert';

import 'package:dio/dio.dart';

import '../../../api_response.dart';
import '../../../const.dart';
import '../filestation.dart';
import 'models/fs_list_models.dart';

class List {

  final endpoint = '/entry.cgi';
  final FileStationAPI _parentApi;

  List(this._parentApi);

  Future<Response<String>> listSharedFolderRaw({int? version, int offset = 0}) {
    final param = {
      'offset': offset,
      'api': Syno.FileStation.List,
      'version': version ??
          _parentApi.cntx.maxApiVersion(Syno.FileStation.List),
      'method': 'list_share',
    };

    final uri = _parentApi.cntx.buildUri(
        _parentApi.endpoint + endpoint, param);
    return _parentApi.cntx.c.getUri(uri);
  }

  Future<APIResponse<FileStationSharedFolderList>> listSharedFolder(
      {int? version,
        int offset = 0}) {
    return listSharedFolderRaw(version: version, offset: offset).then((resp) {
      return APIResponse.fromJson(
          jsonDecode(resp.data!), (json) =>
          FileStationSharedFolderList.fromJson(json));
    });
  }

  Future<Response<String>> listFolderFileRaw(String path,
      {int? version,
        int offset = 0}) {
    final param = {
      'offset': offset,
      'api': Syno.FileStation.List,
      'version': version ??
          _parentApi.cntx.maxApiVersion(Syno.FileStation.List),
      'method': 'list',
      'folder_path': path,
    };

    final uri = _parentApi.cntx.buildUri(
        _parentApi.endpoint + endpoint, param);
    return _parentApi.cntx.c.getUri(uri);
  }

  Future<APIResponse<FileStationFolderFileList>> listFolderFile(
      String path,
      {int? version,
        int offset = 0}) {
    return listFolderFileRaw(path, version: version, offset: offset).then((
        resp) {
      return APIResponse.fromJson(
          jsonDecode(resp.data!), (json) =>
          FileStationFolderFileList.fromJson(json));
    });
  }
}
