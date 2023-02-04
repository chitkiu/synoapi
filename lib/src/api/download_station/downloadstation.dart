import 'package:logging/logging.dart';

import '../../context.dart';
import 'info/ds_info.dart';
import 'rss/ds_rss.dart';
import 'schedule/ds_schedule.dart';
import 'statistic/ds_statistic.dart';
import 'task/ds_task.dart';

final l = Logger('DownloadStation');

class DownloadStationAPI {
  final session = 'DownloadStation';
  final endpoint = '/webapi/DownloadStation';
  final APIContext cntx;

  // sub APIs
  late final Info _info;
  late final Schedule _schedule;
  late final Task _task;
  late final RSS _rss;
  late final Statistic _statistic;

  DownloadStationAPI(this.cntx) {
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
