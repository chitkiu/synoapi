import '../../../../synoapi.dart';
import 'ds_rss_feed.dart';
import 'ds_rss_site.dart';

class RSS {
  late final APIContext cntx;
  late final session;
  late final endpoint;

  // sub APIs
  late final _site;
  late final _feed;

  RSS(DownloadStationAPI _parentApi)
      : cntx = _parentApi.cntx,
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
