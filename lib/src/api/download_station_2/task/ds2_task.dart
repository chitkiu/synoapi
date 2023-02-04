import 'dart:convert';

import 'package:dio/dio.dart';

import '../../../api_response.dart';
import '../../../const.dart';
import '../../../context.dart';
import '../downloadstation2.dart';

class Task {
  final endpoint = '/entry.cgi/${Syno.DownloadStation2.Task}';
  final DownloadStation2API _parentApi;
  final APIContext _cntx;

  Task(this._parentApi) : _cntx = _parentApi.cntx;

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

  Future<APIResponse<void>> create(
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
      return APIResponse.fromJson(jsonDecode(resp.data!), (json) {});
    });
  }

}
