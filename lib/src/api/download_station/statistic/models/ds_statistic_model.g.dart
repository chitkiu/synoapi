// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ds_statistic_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
