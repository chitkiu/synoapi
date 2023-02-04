import '../../context.dart';
import '../base_station_api.dart';
import 'info/query_info.dart';

class QueryAPI extends BaseStationAPI {
  // sub API
  late final Info info;

  QueryAPI(APIContext context) : super(context, '/webapi/query.cgi') {
    info = Info(this);
  }
}
