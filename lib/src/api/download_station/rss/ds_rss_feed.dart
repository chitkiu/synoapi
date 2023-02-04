import 'dart:convert';

import 'package:dio/dio.dart';

import '../../../api_response.dart';
import '../../../const.dart';
import '../../../context.dart';
import 'ds_rss.dart';
import 'models/ds_rss_models.dart';

class RSSFeed {
  final RSS _parentApi;
  final endpoint = '/RSSfeed.cgi';
  late final APIContext _cntx;

  RSSFeed(this._parentApi) : _cntx = _parentApi.cntx;

  Future<Response<String>> listRaw(String id,
      {int? offset, int? limit, int? version}) {
    final param = {
      'id': id,
      'offset': offset,
      'limit': limit,
      'api': Syno.DownloadStation.RSS.Feed,
      'version': version ?? _cntx.maxApiVersion(Syno.DownloadStation.RSS.Feed),
      'method': 'list',
    };

    final uri = _cntx.buildUri(_parentApi.endpoint + endpoint, param);
    return _cntx.c.getUri(uri);
  }

  Future<APIResponse<DownloadStationRSSFeedList>> list(String id,
      {int? offset, int? limit, int? version}) {
    return listRaw(id, offset: offset, limit: limit, version: version)
        .then((resp) {
      return APIResponse.fromJson(jsonDecode(resp.data!),
              (data) => DownloadStationRSSFeedList.fromJson(data));
    });
  }
}
