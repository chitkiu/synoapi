import '../../context.dart';
import 'list/fs_list.dart';

class FileStationAPI {
  final session = 'FileStation';
  final endpoint = '/webapi';
  final APIContext cntx;

  // sub APIs
  late final List _list;

  FileStationAPI(this.cntx) {
    _list = List(this);
  }

  List get list {
    return _list;
  }
}
