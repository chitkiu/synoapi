import 'dart:convert';

import 'package:dio/dio.dart';

import '../../../api_response.dart';
import '../../../const.dart';
import '../../../context.dart';
import 'ds_rss.dart';
import 'models/ds_rss_models.dart';

class RSSSite {
  final RSS _parentApi;
  final endpoint = '/RSSsite.cgi';
  late final APIContext _cntx;

  RSSSite(this._parentApi) : _cntx = _parentApi.cntx;

  Future<Response<String>> listRaw({int? offset, int? limit, int? version}) {
    final param = {
      'offset': offset,
      'limit': limit,
      'api': Syno.DownloadStation.RSS.Site,
      'version': version ?? _cntx.maxApiVersion(Syno.DownloadStation.RSS.Site),
      'method': 'list',
    };

    final uri = _cntx.buildUri(_parentApi.endpoint + endpoint, param);
    return _cntx.c.getUri(uri);
  }

  Future<APIResponse<DownloadStationRSSSiteList>> list(
      {int? offset, int? limit, int? version}) {
    return listRaw(offset: offset, limit: limit, version: version).then((resp) {
      return APIResponse.fromJson(jsonDecode(resp.data!),
              (data) => DownloadStationRSSSiteList.fromJson(data));
    });
  }

  Future<Response<String>> refreshRaw(List<String> ids, {int? version}) {
    final param = {
      'id': ids.join(','),
      'api': Syno.DownloadStation.RSS.Site,
      'version': version ?? _cntx.maxApiVersion(Syno.DownloadStation.RSS.Site),
      'method': 'refresh',
    };

    final uri = _cntx.buildUri(_parentApi.endpoint + endpoint, param);
    return _cntx.c.getUri(uri);
  }

  Future<APIResponse<Null>> refresh(List<String> ids, {int? version}) {
    return refreshRaw(ids, version: version).then((resp) {
      return APIResponse.fromJson(jsonDecode(resp.data!), (data) => null);
    });
  }
}
