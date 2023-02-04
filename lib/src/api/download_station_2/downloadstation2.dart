import '../../../synoapi.dart';
import 'task/ds2_task.dart';

class DownloadStation2API {
  final session = 'DownloadStation2';
  final endpoint = '/webapi';
  final APIContext cntx;

  late final Task _task;

  DownloadStation2API(this.cntx) {
    _task = Task(this);
  }

  Task get task {
    return _task;
  }

}
