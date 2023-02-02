// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

APIInfoQuery _$APIInfoQueryFromJson(Map<String, dynamic> json) => APIInfoQuery(
      json['key'] as String?,
      json['path'] as String?,
      json['minVersion'] as int?,
      json['maxVersion'] as int?,
    );

Map<String, dynamic> _$APIInfoQueryToJson(APIInfoQuery instance) =>
    <String, dynamic>{
      'key': instance.key,
      'path': instance.path,
      'minVersion': instance.minVersion,
      'maxVersion': instance.maxVersion,
    };

DownloadStationScheduleGetConfig _$DownloadStationScheduleGetConfigFromJson(
        Map<String, dynamic> json) =>
    DownloadStationScheduleGetConfig(
      json['enabled'] as bool?,
      json['emule_enabled'] as bool?,
    );

Map<String, dynamic> _$DownloadStationScheduleGetConfigToJson(
        DownloadStationScheduleGetConfig instance) =>
    <String, dynamic>{
      'enabled': instance.enabled,
      'emule_enabled': instance.emuleEnabled,
    };

DownloadStationStatisticGetInfo _$DownloadStationStatisticGetInfoFromJson(
        Map<String, dynamic> json) =>
    DownloadStationStatisticGetInfo(
      json['speed_download'] as int?,
      json['speed_upload'] as int?,
      json['emule_speed_download'] as int?,
      json['emule_speed_upload'] as int?,
    );

Map<String, dynamic> _$DownloadStationStatisticGetInfoToJson(
        DownloadStationStatisticGetInfo instance) =>
    <String, dynamic>{
      'speed_download': instance.speedDownload,
      'speed_upload': instance.speedUpload,
      'emule_speed_download': instance.emuleSpeedDownload,
      'emule_speed_upload': instance.emuleSpeedUpload,
    };

DownloadStationTaskActionResponse _$DownloadStationTaskActionResponseFromJson(
        Map<String, dynamic> json) =>
    DownloadStationTaskActionResponse(
      json['id'] as String?,
      json['error'] as int?,
    );

Map<String, dynamic> _$DownloadStationTaskActionResponseToJson(
        DownloadStationTaskActionResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'error': instance.error,
    };

DownloadStationRSSSiteList _$DownloadStationRSSSiteListFromJson(
        Map<String, dynamic> json) =>
    DownloadStationRSSSiteList(
      json['total'] as int,
      json['offset'] as int,
      (json['sites'] as List<dynamic>)
          .map((e) => Site.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DownloadStationRSSSiteListToJson(
        DownloadStationRSSSiteList instance) =>
    <String, dynamic>{
      'total': instance.total,
      'offset': instance.offset,
      'sites': instance.sites,
    };

Site _$SiteFromJson(Map<String, dynamic> json) => Site(
      json['id'] as int?,
      json['is_updating'] as bool?,
      json['title'] as String?,
      json['url'] as String?,
      const DateTimeEpochConverter().fromJson(json['last_update'] as int?),
      json['username'] as String?,
    );

Map<String, dynamic> _$SiteToJson(Site instance) => <String, dynamic>{
      'id': instance.id,
      'is_updating': instance.isUpdating,
      'title': instance.title,
      'url': instance.url,
      'last_update': const DateTimeEpochConverter().toJson(instance.lastUpdate),
      'username': instance.username,
    };

DownloadStationRSSFeedList _$DownloadStationRSSFeedListFromJson(
        Map<String, dynamic> json) =>
    DownloadStationRSSFeedList(
      json['total'] as int,
      json['offset'] as int,
      (json['feeds'] as List<dynamic>)
          .map((e) => Feed.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DownloadStationRSSFeedListToJson(
        DownloadStationRSSFeedList instance) =>
    <String, dynamic>{
      'total': instance.total,
      'offset': instance.offset,
      'feeds': instance.feeds,
    };

Feed _$FeedFromJson(Map<String, dynamic> json) => Feed(
      json['title'] as String?,
      json['size'] as String?,
      const DateTimeEpochConverter().fromJson(json['time'] as int?),
      json['download_uri'] as String?,
      json['external_link'] as String?,
    );

Map<String, dynamic> _$FeedToJson(Feed instance) => <String, dynamic>{
      'title': instance.title,
      'size': instance.size,
      'time': const DateTimeEpochConverter().toJson(instance.time),
      'download_uri': instance.downloadUri,
      'external_link': instance.externalLink,
    };

FileStationSharedFolderList _$FileStationSharedFolderListFromJson(
        Map<String, dynamic> json) =>
    FileStationSharedFolderList(
      json['total'] as int,
      json['offset'] as int,
      (json['shares'] as List<dynamic>)
          .map((e) => Directory.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FileStationSharedFolderListToJson(
        FileStationSharedFolderList instance) =>
    <String, dynamic>{
      'total': instance.total,
      'offset': instance.offset,
      'shares': instance.shares,
    };

FileStationFolderFileList _$FileStationFolderFileListFromJson(
        Map<String, dynamic> json) =>
    FileStationFolderFileList(
      json['total'] as int,
      json['offset'] as int,
      (json['files'] as List<dynamic>)
          .map((e) => Directory.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FileStationFolderFileListToJson(
        FileStationFolderFileList instance) =>
    <String, dynamic>{
      'total': instance.total,
      'offset': instance.offset,
      'files': instance.files,
    };

Directory _$DirectoryFromJson(Map<String, dynamic> json) => Directory(
      json['hybridshare_cache_status'] as int?,
      json['hybridshare_pin_status'] as int?,
      json['isdir'] as bool?,
      json['name'] as String?,
      json['path'] as String?,
    );

Map<String, dynamic> _$DirectoryToJson(Directory instance) => <String, dynamic>{
      'hybridshare_cache_status': instance.hybridshareCacheStatus,
      'hybridshare_pin_status': instance.hybridsharePinStatus,
      'isdir': instance.isDir,
      'name': instance.name,
      'path': instance.path,
    };
