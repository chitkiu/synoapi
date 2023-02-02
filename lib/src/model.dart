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
class APIInfoQuery {
  String? key;
  String? path;
  int? minVersion;
  int? maxVersion;

  APIInfoQuery(this.key, this.path, this.minVersion, this.maxVersion);

  factory APIInfoQuery.fromJson(Map<String, dynamic> json) => _$APIInfoQueryFromJson(json);

  Map<String, dynamic> toJson() => _$APIInfoQueryToJson(this);
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

//TODO Maybe move to some generator???
@JsonSerializable()
class DownloadStationTaskActionResponse {
  String? id;
  int? error;

  DownloadStationTaskActionResponse(this.id, this.error);

  factory DownloadStationTaskActionResponse.fromJson(Map<String, dynamic> json) =>
      _$DownloadStationTaskActionResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DownloadStationTaskActionResponseToJson(this);
}

//TODO Maybe move to some generator???
class DownloadStationMultiTaskActionResponse {
  List<DownloadStationTaskActionResponse> responses = [];

  DownloadStationMultiTaskActionResponse(this.responses);

  factory DownloadStationMultiTaskActionResponse.fromJson(List<dynamic>? json) {
    if (json != null) {
      return DownloadStationMultiTaskActionResponse(json.map((el) {
        return DownloadStationTaskActionResponse.fromJson(el);
      }).toList());
    }
    return DownloadStationMultiTaskActionResponse([]);
  }
}

class DownloadStationTaskDelete extends DownloadStationMultiTaskActionResponse {
  DownloadStationTaskDelete(DownloadStationMultiTaskActionResponse superObj) : super(superObj.responses);

  factory DownloadStationTaskDelete.fromJson(List<dynamic> json) {
    return DownloadStationTaskDelete(DownloadStationMultiTaskActionResponse.fromJson(json));
  }
}

class DownloadStationTaskPause extends DownloadStationMultiTaskActionResponse {
  DownloadStationTaskPause(DownloadStationMultiTaskActionResponse superObj) : super(superObj.responses);

  factory DownloadStationTaskPause.fromJson(List<dynamic> json) {
    return DownloadStationTaskPause(DownloadStationMultiTaskActionResponse.fromJson(json));
  }
}

class DownloadStationTaskResume extends DownloadStationMultiTaskActionResponse {
  DownloadStationTaskResume(DownloadStationMultiTaskActionResponse superObj) : super(superObj.responses);

  factory DownloadStationTaskResume.fromJson(List<dynamic> json) {
    return DownloadStationTaskResume(DownloadStationMultiTaskActionResponse.fromJson(json));
  }
}

class DownloadStationTaskEdit extends DownloadStationTaskActionResponse {
  DownloadStationTaskEdit(DownloadStationTaskActionResponse superObj) : super(superObj.id, superObj.error);

  factory DownloadStationTaskEdit.fromJson(Map<String, dynamic> json) {
    return DownloadStationTaskEdit(DownloadStationTaskActionResponse.fromJson(json));
  }
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

@JsonSerializable()
class FileStationSharedFolderList {
  int total = 0;
  int offset = 0;
  List<Directory> shares = [];

  FileStationSharedFolderList(this.total, this.offset, this.shares);

  factory FileStationSharedFolderList.fromJson(Map<String, dynamic> json) => _$FileStationSharedFolderListFromJson(json);

  Map<String, dynamic> toJson() => _$FileStationSharedFolderListToJson(this);
}

@JsonSerializable()
class FileStationFolderFileList {
  int total = 0;
  int offset = 0;
  List<Directory> files = [];

  FileStationFolderFileList(this.total, this.offset, this.files);

  factory FileStationFolderFileList.fromJson(Map<String, dynamic> json) => _$FileStationFolderFileListFromJson(json);

  Map<String, dynamic> toJson() => _$FileStationFolderFileListToJson(this);
}

@JsonSerializable()
class Directory {
  @JsonKey(name: 'hybridshare_cache_status')
  int? hybridshareCacheStatus;
  @JsonKey(name: 'hybridshare_pin_status')
  int? hybridsharePinStatus;
  @JsonKey(name: 'isdir')
  bool? isDir;
  String? name;
  String? path;

  Directory(this.hybridshareCacheStatus, this.hybridsharePinStatus, this.isDir,
      this.name, this.path);

  factory Directory.fromJson(Map<String, dynamic> json) => _$DirectoryFromJson(json);

  Map<String, dynamic> toJson() => _$DirectoryToJson(this);
}
