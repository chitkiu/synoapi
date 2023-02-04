/*
API response model.
run 'dart run build_runner build' to generate json class.
 */
import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

import 'util/util.dart';

part 'model.g.dart';

class APIResponse<T> {
  final bool success;
  T? data;
  Map<String, dynamic>? error;
  String? _rawJson;

  APIResponse(this.success, this.data, this.error);

  APIResponse.fromJson(Map<String, dynamic>? json, T Function(dynamic data) create)
      : success = mapGet(json, 'success', otherwise: false) {
    if (json != null) {
      _rawJson = jsonEncode(json);
    }
    error = mapGet(json, 'error');
    data = mapGet(json, 'data', mapper: create);
  }

  String? get raw {
    return _rawJson;
  }
}

@JsonSerializable()
class DownloadStationScheduleGetConfig {
  bool? enabled;
  @JsonKey(name: 'emule_enabled')
  bool? emuleEnabled;

  DownloadStationScheduleGetConfig(this.enabled, this.emuleEnabled);

  factory DownloadStationScheduleGetConfig.fromJson(Map<String, dynamic> json) =>
      _$DownloadStationScheduleGetConfigFromJson(json);

  Map<String, dynamic> toJson() => _$DownloadStationScheduleGetConfigToJson(this);
}

@JsonSerializable()
class DownloadStationStatisticGetInfo {
  @JsonKey(name: 'speed_download')
  int? speedDownload;
  @JsonKey(name: 'speed_upload')
  int? speedUpload;
  @JsonKey(name: 'emule_speed_download')
  int? emuleSpeedDownload;
  @JsonKey(name: 'emule_speed_upload')
  int? emuleSpeedUpload;

  DownloadStationStatisticGetInfo(this.speedDownload, this.speedUpload, this.emuleSpeedDownload, this.emuleSpeedUpload);

  factory DownloadStationStatisticGetInfo.fromJson(Map<String, dynamic> json) =>
      _$DownloadStationStatisticGetInfoFromJson(json);

  Map<String, dynamic> toJson() => _$DownloadStationStatisticGetInfoToJson(this);
}

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
