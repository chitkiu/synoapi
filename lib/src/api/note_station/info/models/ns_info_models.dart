import 'package:json_annotation/json_annotation.dart';

part 'ns_info_models.g.dart';

@JsonSerializable()
class NoteStationInfo {

  @JsonKey(name: "allow_share")
  bool? allowShare;

  @JsonKey(name: "hash")
  String? hash;

  @JsonKey(name: "is_admin")
  bool isAdmin;

  @JsonKey(name: "search_precisely")
  bool? searchPrecisely;

  @JsonKey(name: "uid")
  int uid;

  @JsonKey(name: "username")
  String username;

  @JsonKey(name: "version")
  NoteStationInfoVersion version;

  NoteStationInfo({this.allowShare, this.hash, required this.isAdmin,
    this.searchPrecisely, required this.uid, required this.username, required this.version});

  factory NoteStationInfo.fromJson(Map<String, dynamic> json) => _$NoteStationInfoFromJson(json);

  Map<String, dynamic> toJson() => _$NoteStationInfoToJson(this);

}

@JsonSerializable()
class NoteStationInfoVersion {

  @JsonKey(name: "build")
  String? build;

  @JsonKey(name: "hotfix")
  String? hotfix;

  @JsonKey(name: "major")
  String? major;

  @JsonKey(name: "minor")
  String? minor;

  NoteStationInfoVersion({this.build, this.hotfix, this.major, this.minor});

  factory NoteStationInfoVersion.fromJson(Map<String, dynamic> json) => _$NoteStationInfoVersionFromJson(json);

  Map<String, dynamic> toJson() => _$NoteStationInfoVersionToJson(this);

}
