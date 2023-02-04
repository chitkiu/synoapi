import 'dart:convert';

import 'package:dio/dio.dart';

import '../../../synoapi.dart';
import '../../model.dart' as model;

class DownloadStation2API {
  final session = 'DownloadStation2';
  final endpoint = '/webapi';
  final APIContext _cntx;

  late final Task _task;

  DownloadStation2API(this._cntx) {
    _task = Task(this);
  }

  Task get task {
    return _task;
  }

}

class Task {
  final endpoint = '/entry.cgi/${Syno.DownloadStation2.Task}';
  final DownloadStation2API _parentApi;
  final APIContext _cntx;

  Task(this._parentApi) : _cntx = _parentApi._cntx;

  Future<Response<String>> createRaw(
      {int? version,
        List<String>? uris,
        String? filePath,
        String? username,
        String? passwd,
        String? unzipPasswd,
        String? destination,
        bool createList = false}) async {
    var apiVersion = version ?? _cntx.maxApiVersion(Syno.DownloadStation2.Task, defaultVersion: 2);

    var options = {
      'api': Syno.DownloadStation2.Task,
      'version': apiVersion,
      'method': 'create',
    };

    if (filePath != null) {
      var additionalParams = <String, dynamic>{};
      additionalParams['destination'] = '"$destination"';
      additionalParams['create_list'] = createList;
      additionalParams['method'] = 'create';
      additionalParams['version'] = apiVersion;
      additionalParams['type'] = '"file"';
      additionalParams['torrent'] = await MultipartFile.fromFile(filePath);
      additionalParams['file'] = ['"torrent"'].toString();

      var data = FormData.fromMap(additionalParams);

      final uri = _cntx.buildUri(_parentApi.endpoint + endpoint, options);

      return _cntx.c.postUri(uri, data: data);
    } else if (uris != null) {
      options['type'] = 'url';
      options['url'] = uris.join(',');
      options['create_list'] = createList;
      if (destination != null) {
        options['destination'] = destination;
      }

      final uri = _cntx.buildUri(_parentApi.endpoint + endpoint, options);

      return _cntx.c.getUri(uri);
    } else {
      return Future.error(Exception("Uris or file must be not null!"));
    }
  }

  Future<model.APIResponse<void>> create(
      {int? version,
        List<String>? uris,
        String? filePath,
        String? username,
        String? passwd,
        String? unzipPasswd,
        String? destination,
        bool createList = false}) {
    return createRaw(
        version: version,
        uris: uris,
        filePath: filePath,
        username: username,
        passwd: passwd,
        unzipPasswd: unzipPasswd,
        destination: destination)
        .then((resp) {
      return model.APIResponse.fromJson(jsonDecode(resp.data!), (json) {});
    });
  }

}
