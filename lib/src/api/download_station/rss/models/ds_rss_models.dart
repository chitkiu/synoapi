import 'package:json_annotation/json_annotation.dart';

import '../../../../util/util.dart';

part 'ds_rss_models.g.dart';

@JsonSerializable()
class DownloadStationRSSSiteList {
  int total = 0;
  int offset = 0;
  List<Site> sites = [];

  DownloadStationRSSSiteList(this.total, this.offset, this.sites);

  factory DownloadStationRSSSiteList.fromJson(Map<String, dynamic> json) => _$DownloadStationRSSSiteListFromJson(json);

  Map<String, dynamic> toJson() => _$DownloadStationRSSSiteListToJson(this);
}

@JsonSerializable()
@DateTimeEpochConverter()
class Site {
  int? id;
  @JsonKey(name: 'is_updating')
  bool? isUpdating;
  String? title;
  String? url;
  @JsonKey(name: 'last_update')
  DateTime? lastUpdate;
  String? username;

  Site(this.id, this.isUpdating, this.title, this.url, this.lastUpdate, this.username);

  factory Site.fromJson(Map<String, dynamic> json) => _$SiteFromJson(json);

  Map<String, dynamic> toJson() => _$SiteToJson(this);
}

@JsonSerializable()
class DownloadStationRSSFeedList {
  int total = 0;
  int offset = 0;
  List<Feed> feeds = [];

  DownloadStationRSSFeedList(this.total, this.offset, this.feeds);

  factory DownloadStationRSSFeedList.fromJson(Map<String, dynamic> json) => _$DownloadStationRSSFeedListFromJson(json);

  Map<String, dynamic> toJson() => _$DownloadStationRSSFeedListToJson(this);
}

@JsonSerializable()
@DateTimeEpochConverter()
class Feed {
  String? title;
  String? size;
  DateTime? time;
  @JsonKey(name: 'download_uri')
  String? downloadUri;
  @JsonKey(name: 'external_link')
  String? externalLink;

  Feed(this.title, this.size, this.time, this.downloadUri, this.externalLink);

  factory Feed.fromJson(Map<String, dynamic> json) => _$FeedFromJson(json);

  Map<String, dynamic> toJson() => _$FeedToJson(this);
}
