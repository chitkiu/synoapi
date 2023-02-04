// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ds_schedule_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
