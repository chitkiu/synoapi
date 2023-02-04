// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ds_info_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DownloadStationInfoGetInfo _$DownloadStationInfoGetInfoFromJson(
        Map<String, dynamic> json) =>
    DownloadStationInfoGetInfo(
      version: json['version'] as int?,
      versionString: json['version_string'] as String?,
      isManager: json['is_manager'] as bool?,
    );

Map<String, dynamic> _$DownloadStationInfoGetInfoToJson(
        DownloadStationInfoGetInfo instance) =>
    <String, dynamic>{
      'version': instance.version,
      'version_string': instance.versionString,
      'is_manager': instance.isManager,
    };

DownloadStationInfoGetConfig _$DownloadStationInfoGetConfigFromJson(
        Map<String, dynamic> json) =>
    DownloadStationInfoGetConfig(
      btMaxDownload: json['bt_max_download'] as int?,
      btMaxUpload: json['bt_max_upload'] as int?,
      emuleMaxDownload: json['emule_max_download'] as int?,
      emuleMaxUpload: json['emule_max_upload'] as int?,
      nzbMaxDownload: json['nzb_max_download'] as int?,
      httpMaxDownload: json['http_max_download'] as int?,
      ftpMaxDownload: json['ftp_max_download'] as int?,
      emuleEnabled: json['emule_enabled'] as bool?,
      unzipServiceEnabled: json['unzip_service_enabled'] as bool?,
      defaultDestination: json['default_destination'] as String?,
      emuleDefaultDestination: json['emule_default_destination'] as String?,
    );

Map<String, dynamic> _$DownloadStationInfoGetConfigToJson(
        DownloadStationInfoGetConfig instance) =>
    <String, dynamic>{
      'bt_max_download': instance.btMaxDownload,
      'bt_max_upload': instance.btMaxUpload,
      'emule_max_download': instance.emuleMaxDownload,
      'emule_max_upload': instance.emuleMaxUpload,
      'nzb_max_download': instance.nzbMaxDownload,
      'http_max_download': instance.httpMaxDownload,
      'ftp_max_download': instance.ftpMaxDownload,
      'emule_enabled': instance.emuleEnabled,
      'unzip_service_enabled': instance.unzipServiceEnabled,
      'default_destination': instance.defaultDestination,
      'emule_default_destination': instance.emuleDefaultDestination,
    };
