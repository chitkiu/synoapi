import 'package:json_annotation/json_annotation.dart';

part 'ds_info_models.g.dart';

@JsonSerializable()
class DownloadStationInfoGetInfo {
  int? version;
  @JsonKey(name: 'version_string')
  String? versionString;
  @JsonKey(name: 'is_manager')
  bool? isManager;

  DownloadStationInfoGetInfo({this.version, this.versionString, this.isManager});

  factory DownloadStationInfoGetInfo.fromJson(Map<String, dynamic> json) => _$DownloadStationInfoGetInfoFromJson(json);

  Map<String, dynamic> toJson() => _$DownloadStationInfoGetInfoToJson(this);
}

@JsonSerializable()
class DownloadStationInfoGetConfig {
  @JsonKey(name: 'bt_max_download')
  int? btMaxDownload;
  @JsonKey(name: 'bt_max_upload')
  int? btMaxUpload;
  @JsonKey(name: 'emule_max_download')
  int? emuleMaxDownload;
  @JsonKey(name: 'emule_max_upload')
  int? emuleMaxUpload;
  @JsonKey(name: 'nzb_max_download')
  int? nzbMaxDownload;
  @JsonKey(name: 'http_max_download')
  int? httpMaxDownload;
  @JsonKey(name: 'ftp_max_download')
  int? ftpMaxDownload;
  @JsonKey(name: 'emule_enabled')
  bool? emuleEnabled;
  @JsonKey(name: 'unzip_service_enabled')
  bool? unzipServiceEnabled;
  @JsonKey(name: 'default_destination')
  String? defaultDestination;
  @JsonKey(name: 'emule_default_destination')
  String? emuleDefaultDestination;

  DownloadStationInfoGetConfig({
    this.btMaxDownload,
    this.btMaxUpload,
    this.emuleMaxDownload,
    this.emuleMaxUpload,
    this.nzbMaxDownload,
    this.httpMaxDownload,
    this.ftpMaxDownload,
    this.emuleEnabled,
    this.unzipServiceEnabled,
    this.defaultDestination,
    this.emuleDefaultDestination});

  factory DownloadStationInfoGetConfig.fromJson(Map<String, dynamic> json) =>
      _$DownloadStationInfoGetConfigFromJson(json);

  Map<String, dynamic> toJson() => _$DownloadStationInfoGetConfigToJson(this);
}
