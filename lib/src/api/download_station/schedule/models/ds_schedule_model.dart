import 'package:json_annotation/json_annotation.dart';

part 'ds_schedule_model.g.dart';

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