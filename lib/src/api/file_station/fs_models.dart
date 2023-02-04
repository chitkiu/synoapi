import 'package:json_annotation/json_annotation.dart';

part 'fs_models.g.dart';

@JsonSerializable()
class FileStationSharedFolderList {
  int total = 0;
  int offset = 0;
  List<Directory> shares = [];

  FileStationSharedFolderList(
      {required this.total, required this.offset, required this.shares});

  factory FileStationSharedFolderList.fromJson(Map<String, dynamic> json) =>
      _$FileStationSharedFolderListFromJson(json);

  Map<String, dynamic> toJson() => _$FileStationSharedFolderListToJson(this);
}

@JsonSerializable()
class FileStationFolderFileList {
  int total = 0;
  int offset = 0;
  List<Directory> files = [];

  FileStationFolderFileList({required this.total, required this.offset, required this.files});

  factory FileStationFolderFileList.fromJson(Map<String, dynamic> json) =>
      _$FileStationFolderFileListFromJson(json);

  Map<String, dynamic> toJson() => _$FileStationFolderFileListToJson(this);
}

@JsonSerializable()
class Directory {
  @JsonKey(name: 'hybridshare_cache_status')
  int? hybridshareCacheStatus;
  @JsonKey(name: 'hybridshare_pin_status')
  int? hybridsharePinStatus;
  @JsonKey(name: 'isdir')
  bool isDir;
  String name;
  String path;

  Directory(
      {this.hybridshareCacheStatus,
      this.hybridsharePinStatus,
      required this.isDir,
      required this.name,
      required this.path});

  factory Directory.fromJson(Map<String, dynamic> json) =>
      _$DirectoryFromJson(json);

  Map<String, dynamic> toJson() => _$DirectoryToJson(this);
}
