import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:logging/logging.dart';

import '../../../synoapi.dart';
import '../../const.dart';
import '../../context.dart';
import '../../model.dart' as model;
import 'ds_model.dart' as ds_model;

final l = Logger('DownloadStation');

class DownloadStationAPI {
  final session = 'DownloadStation';
  final endpoint = '/webapi/DownloadStation';
  final APIContext _cntx;

  // sub APIs
  late final Info _info;
  late final Schedule _schedule;
  late final Task _task;
  late final RSS _rss;
  late final Statistic _statistic;

  DownloadStationAPI(this._cntx) {
    _info = Info(this);
    _schedule = Schedule(this);
    _task = Task(this);
    _rss = RSS(this);
    _statistic = Statistic(this);
  }

  Info get info {
    return _info;
  }

  Schedule get schedule {
    return _schedule;
  }

  Task get task {
    return _task;
  }

  RSS get rss {
    return _rss;
  }

  Statistic get statistic {
    return _statistic;
  }
}

class Info {
  final endpoint = '/info.cgi';
  final DownloadStationAPI _parentApi;

  Info(this._parentApi);

  Future<Response<String>> getInfoRaw({int? version}) {
    final param = {
      'api': Syno.DownloadStation.Info,
      'version': version ?? _parentApi._cntx.maxApiVersion(Syno.DownloadStation.Info),
      'method': 'getinfo',
    };

    final uri = _parentApi._cntx.buildUri(_parentApi.endpoint + endpoint, param);
    return _parentApi._cntx.c.getUri(uri);
  }

  Future<model.APIResponse<ds_model.DownloadStationInfoGetInfo>> getInfo({int? version}) {
    return getInfoRaw(version: version).then((resp) {
      return model.APIResponse.fromJson(
          jsonDecode(resp.data!), (json) => ds_model.DownloadStationInfoGetInfo.fromJson(json));
    });
  }

  Future<Response<String>> getConfigRaw({int? version}) {
    final param = {
      'api': Syno.DownloadStation.Info,
      'version': version ?? _parentApi._cntx.maxApiVersion(Syno.DownloadStation.Info),
      'method': 'getconfig',
    };

    final uri = _parentApi._cntx.buildUri(_parentApi.session + endpoint, param);
    return _parentApi._cntx.c.getUri(uri);
  }

  Future<model.APIResponse<ds_model.DownloadStationInfoGetConfig>> getConfig({int? version}) {
    return getConfigRaw(version: version).then((resp) {
      return model.APIResponse.fromJson(
          jsonDecode(resp.data!), (json) => ds_model.DownloadStationInfoGetConfig.fromJson(json));
    });
  }

  Future<Response<String>> setServerConfigRaw(Map<String, String> config, {int? version}) {
    final param = {
      'api': Syno.DownloadStation.Info,
      'version': version ?? _parentApi._cntx.maxApiVersion(Syno.DownloadStation.Info),
      'method': 'setserverconfig',
    };
    param.addAll(config);
    param.removeWhere((key, value) => value == null);

    final uri = _parentApi._cntx.buildUri(_parentApi.session + endpoint, param);
    return _parentApi._cntx.c.getUri(uri);
  }

  Future<model.APIResponse<void>> setServerConfig(Map<String, String> config, {int? version}) {
    return setServerConfigRaw(config, version: version).then((resp) {
      return model.APIResponse.fromJson(jsonDecode(resp.data!), (json) {});
    });
  }
}

class Schedule {
  final endpoint = '/schedule.cgi';
  final DownloadStationAPI _parentApi;

  Schedule(this._parentApi);

  Future<Response<String>> getConfigRaw({int? version}) {
    final param = {
      'api': Syno.DownloadStation.Schedule,
      'version': version ?? _parentApi._cntx.maxApiVersion(Syno.DownloadStation.Schedule),
      'method': 'getconfig',
    };

    final uri = _parentApi._cntx.buildUri(_parentApi.endpoint + endpoint, param);
    return _parentApi._cntx.c.getUri(uri);
  }

  Future<model.APIResponse<model.DownloadStationScheduleGetConfig>> scheduleGetConfig({int? version}) {
    return getConfigRaw(version: version).then((resp) {
      return model.APIResponse.fromJson(
          jsonDecode(resp.data!), (json) => model.DownloadStationScheduleGetConfig.fromJson(json));
    });
  }

  Future<Response<String>> setConfigRaw(bool enabled, bool emuleEnabled, {int? version}) {
    final param = {
      'enabled': enabled,
      'emule_enabled': emuleEnabled,
      'api': Syno.DownloadStation.Schedule,
      'version': version ?? _parentApi._cntx.maxApiVersion(Syno.DownloadStation.Schedule),
      'method': 'setconfig',
    };

    final uri = _parentApi._cntx.buildUri(_parentApi.endpoint + endpoint, param);
    return _parentApi._cntx.c.getUri(uri);
  }

  Future<model.APIResponse<void>> scheduleSetConfig(bool enabled, bool emuleEnabled, {int? version}) {
    return setConfigRaw(enabled, emuleEnabled, version: version).then((resp) {
      return model.APIResponse.fromJson(jsonDecode(resp.data!), (json) {});
    });
  }
}

class Task {
  final endpoint = '/task.cgi';
  final DownloadStationAPI _parentApi;
  final APIContext _cntx;

  Task(this._parentApi) : _cntx = _parentApi._cntx;

  Future<Response<String>> listRaw(
      {int? version,
      int offset = 0,
      int limit = -1,
      List<String> additional = const ['detail', 'transfer', 'file', 'tracker', 'peer']}) {
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

  Future<model.APIResponse<ds_model.ListTaskInfo>> list(
      {int? version,
      int offset = 0,
      int limit = -1,
      List<String> additional = const ['detail', 'transfer', 'file', 'tracker', 'peer']}) {
    return listRaw(version: version, offset: offset, limit: limit, additional: additional).then((resp) {
      return model.APIResponse<ds_model.ListTaskInfo>.fromJson(jsonDecode(resp.data!), (data) {
        return ds_model.ListTaskInfo.fromJson(data);
      });
    });
  }

  Future<Response<String>> getInfoRaw(List<String> ids,
      {int? version, List<String> additional = const ['detail', 'transfer', 'file', 'tracker', 'peer']}) {
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

  Future<model.APIResponse<List<ds_model.Task>>> getInfo(List<String> ids,
      {int? version, List<String> additional = const ['detail', 'transfer', 'file', 'tracker', 'peer']}) {
    return getInfoRaw(ids, version: version, additional: additional).then((resp) {
      return model.APIResponse.fromJson(jsonDecode(resp.data!), (json) {
        if (json.containsKey('tasks')) {
          List<dynamic> tasks = (json ?? {})['tasks'];
          return tasks.map((e) => ds_model.Task.fromJson(e)).toList();
        }
        return [];
      });
    });
  }

  Future<Response<String>> deleteRaw(List<String> ids, bool forceComplete, {int? version}) {
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

  Future<model.APIResponse<model.DownloadStationTaskDelete>> delete(List<String> ids, bool forceComplete,
      {int? version}) {
    return deleteRaw(ids, forceComplete, version: version).then((resp) {
      return model.APIResponse.fromJson(
          jsonDecode(resp.data!), (json) => model.DownloadStationTaskDelete.fromJson(json));
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

  Future<model.APIResponse<model.DownloadStationTaskPause>> pause(List<String> ids, {int? version}) {
    return pauseRaw(ids, version: version).then((resp) {
      return model.APIResponse.fromJson(
          jsonDecode(resp.data!), (json) => model.DownloadStationTaskPause.fromJson(json));
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

  Future<model.APIResponse<model.DownloadStationTaskResume>> resume(List<String> ids, {int? version}) {
    return resumeRaw(ids, version: version).then((resp) {
      return model.APIResponse.fromJson(
          jsonDecode(resp.data!), (json) => model.DownloadStationTaskResume.fromJson(json));
    });
  }

  Future<Response<String>> editRaw(List<String> ids, {String? destination, int? version}) {
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

  Future<model.APIResponse<model.DownloadStationTaskEdit>> taskEdit(List<String> ids,
      {String? destination, int? version}) {
    return editRaw(ids, destination: destination, version: version).then((resp) {
      return model.APIResponse.fromJson(jsonDecode(resp.data!), (json) => model.DownloadStationTaskEdit.fromJson(json));
    });
  }
}

class Statistic {
  final endpoint = '/statistic.cgi';
  final DownloadStationAPI _parentApi;
  late final APIContext _cntx;

  Statistic(this._parentApi) : _cntx = _parentApi._cntx;

  Future<Response<String>> getInfoRaw({int? version}) {
    final param = {
      'api': Syno.DownloadStation.Statistic,
      'version': version ?? _cntx.maxApiVersion(Syno.DownloadStation.Statistic),
      'method': 'getinfo',
    };

    final uri = _cntx.buildUri(_parentApi.endpoint + endpoint, param);
    return _cntx.c.getUri(uri);
  }

  Future<model.APIResponse<model.DownloadStationStatisticGetInfo>> getInfo({int? version}) {
    return getInfoRaw(version: version).then((resp) {
      return model.APIResponse.fromJson(
          jsonDecode(resp.data!), (json) => model.DownloadStationStatisticGetInfo.fromJson(json));
    });
  }
}

class RSS {
  final DownloadStationAPI _parentApi;
  late final APIContext _cntx;
  late final session;
  late final endpoint;

  // sub APIs
  late final _site;
  late final _feed;

  RSS(this._parentApi)
      : _cntx = _parentApi._cntx,
        session = _parentApi.session,
        endpoint = _parentApi.endpoint {
    _site = RSSSite(this);
    _feed = RSSFeed(this);
  }

  RSSSite get site {
    return _site;
  }

  RSSFeed get feed {
    return _feed;
  }
}

class RSSSite {
  final RSS _parentApi;
  final endpoint = '/RSSsite.cgi';
  late final APIContext _cntx;

  RSSSite(this._parentApi) : _cntx = _parentApi._cntx;

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

  Future<model.APIResponse<model.DownloadStationRSSSiteList>> list({int? offset, int? limit, int? version}) {
    return listRaw(offset: offset, limit: limit, version: version).then((resp) {
      return model.APIResponse.fromJson(
          jsonDecode(resp.data!), (data) => model.DownloadStationRSSSiteList.fromJson(data));
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

  Future<model.APIResponse<Null>> refresh(List<String> ids, {int? version}) {
    return refreshRaw(ids, version: version).then((resp) {
      return model.APIResponse.fromJson(jsonDecode(resp.data!), (data) => null);
    });
  }
}

class RSSFeed {
  final RSS _parentApi;
  final endpoint = '/RSSfeed.cgi';
  late final APIContext _cntx;

  RSSFeed(this._parentApi) : _cntx = _parentApi._cntx;

  Future<Response<String>> listRaw(String id, {int? offset, int? limit, int? version}) {
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

  Future<model.APIResponse<model.DownloadStationRSSFeedList>> list(String id, {int? offset, int? limit, int? version}) {
    return listRaw(id, offset: offset, limit: limit, version: version).then((resp) {
      return model.APIResponse.fromJson(
          jsonDecode(resp.data!), (data) => model.DownloadStationRSSFeedList.fromJson(data));
    });
  }
}
