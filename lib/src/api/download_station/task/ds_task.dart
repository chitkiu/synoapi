
import 'dart:convert';

import 'package:dio/dio.dart';

import '../../../api_response.dart';
import '../../../const.dart';
import '../../../context.dart';
import '../downloadstation.dart';
import 'models/ds_task_models.dart';

class Task {
  final endpoint = '/task.cgi';
  final DownloadStationAPI _parentApi;
  final APIContext _cntx;

  Task(this._parentApi) : _cntx = _parentApi.cntx;

  Future<Response<String>> listRaw(
      {int? version,
        int offset = 0,
        int limit = -1,
        List<String> additional = const [
          'detail',
          'transfer',
          'file',
          'tracker',
          'peer'
        ]}) {
    final param = {
      'offset': offset,
      'limit': limit,
      'additional': additional.join(','),
      // detail, transfer, file, tracker, peer
      'api': Syno.DownloadStation.Task,
      'version': version ?? _cntx.maxApiVersion(Syno.DownloadStation.Task),
      'method': 'list',
    };

    final uri = _cntx.buildUri(_parentApi.endpoint + endpoint, param);
    return _cntx.c.getUri(uri);
  }

  Future<APIResponse<ListTaskInfo>> list(
      {int? version,
        int offset = 0,
        int limit = -1,
        List<String> additional = const [
          'detail',
          'transfer',
          'file',
          'tracker',
          'peer'
        ]}) {
    return listRaw(
        version: version,
        offset: offset,
        limit: limit,
        additional: additional)
        .then((resp) {
      return APIResponse<ListTaskInfo>.fromJson(
          jsonDecode(resp.data!), (data) {
        return ListTaskInfo.fromJson(data);
      });
    });
  }

  Future<Response<String>> getInfoRaw(List<String> ids,
      {int? version,
        List<String> additional = const [
          'detail',
          'transfer',
          'file',
          'tracker',
          'peer'
        ]}) {
    final param = {
      'id': ids.join(','),
      'additional': additional.join(','),
      // detail, transfer, file, tracker, peer
      'api': Syno.DownloadStation.Task,
      'version': version ?? _cntx.maxApiVersion(Syno.DownloadStation.Task),
      'method': 'getinfo',
    };

    final uri = _cntx.buildUri(_parentApi.endpoint + endpoint, param);

    return _cntx.c.getUri(uri);
  }

  Future<APIResponse<List<DownloadStationTask>>> getInfo(List<String> ids,
      {int? version,
        List<String> additional = const [
          'detail',
          'transfer',
          'file',
          'tracker',
          'peer'
        ]}) {
    return getInfoRaw(ids, version: version, additional: additional)
        .then((resp) {
      return APIResponse.fromJson(jsonDecode(resp.data!), (json) {
        if (json.containsKey('tasks')) {
          List<dynamic> tasks = (json ?? {})['tasks'];
          return tasks.map((e) => DownloadStationTask.fromJson(e)).toList();
        }
        return [];
      });
    });
  }

  Future<Response<String>> deleteRaw(List<String> ids, bool forceComplete,
      {int? version}) {
    final param = {
      'id': ids.join(','),
      'force_complete': forceComplete,
      'api': Syno.DownloadStation.Task,
      'version': version ?? _cntx.maxApiVersion(Syno.DownloadStation.Task),
      'method': 'delete',
    };

    final uri = _cntx.buildUri(_parentApi.endpoint + endpoint, param);
    return _cntx.c.getUri(uri);
  }

  Future<APIResponse<List<DownloadStationTaskActionResponse>>>
  delete(List<String> ids, bool forceComplete, {int? version}) {
    return deleteRaw(ids, forceComplete, version: version).then((resp) {
      return APIResponse.fromJson(jsonDecode(resp.data!), _getFromJson);
    });
  }

  Future<Response<String>> pauseRaw(List<String> ids, {int? version}) {
    final param = {
      'id': ids.join(','),
      'api': Syno.DownloadStation.Task,
      'version': version ?? _cntx.maxApiVersion(Syno.DownloadStation.Task),
      'method': 'pause',
    };

    final uri = _cntx.buildUri(_parentApi.endpoint + endpoint, param);
    return _cntx.c.getUri(uri);
  }

  Future<APIResponse<List<DownloadStationTaskActionResponse>>>
  pause(List<String> ids, {int? version}) {
    return pauseRaw(ids, version: version).then((resp) {
      return APIResponse.fromJson(jsonDecode(resp.data!), _getFromJson);
    });
  }

  Future<Response<String>> resumeRaw(List<String> ids, {int? version}) {
    final param = {
      'id': ids.join(','),
      'api': Syno.DownloadStation.Task,
      'version': version ?? _cntx.maxApiVersion(Syno.DownloadStation.Task),
      'method': 'resume',
    };

    final uri = _cntx.buildUri(_parentApi.endpoint + endpoint, param);
    return _cntx.c.getUri(uri);
  }

  Future<APIResponse<List<DownloadStationTaskActionResponse>>>
  resume(List<String> ids, {int? version}) {
    return resumeRaw(ids, version: version).then((resp) {
      return APIResponse.fromJson(jsonDecode(resp.data!), _getFromJson);
    });
  }

  Future<Response<String>> editRaw(List<String> ids,
      {String? destination, int? version}) {
    final param = {
      'id': ids.join(','),
      'destination': destination,
      'api': Syno.DownloadStation.Task,
      'version': version ?? _cntx.maxApiVersion(Syno.DownloadStation.Task),
      'method': 'edit',
    };
    param.removeWhere((key, value) => value == null);

    final uri = _cntx.buildUri(_parentApi.endpoint + endpoint, param);
    return _cntx.c.getUri(uri);
  }

  Future<APIResponse<List<DownloadStationTaskActionResponse>>>
  taskEdit(List<String> ids, {String? destination, int? version}) {
    return editRaw(ids, destination: destination, version: version)
        .then((resp) {
      return APIResponse.fromJson(jsonDecode(resp.data!), _getFromJson);
    });
  }

  List<DownloadStationTaskActionResponse> _getFromJson(
      dynamic json) {
    return (json as List<dynamic>)
        .map((e) => DownloadStationTaskActionResponse.fromJson(e))
        .toList();
  }
}