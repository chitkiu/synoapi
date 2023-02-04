import 'package:json_annotation/json_annotation.dart';

part 'ds_statistic_model.g.dart';

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
