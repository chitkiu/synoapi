// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fs_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FileStationSharedFolderList _$FileStationSharedFolderListFromJson(
        Map<String, dynamic> json) =>
    FileStationSharedFolderList(
      total: json['total'] as int,
      offset: json['offset'] as int,
      shares: (json['shares'] as List<dynamic>)
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
      total: json['total'] as int,
      offset: json['offset'] as int,
      files: (json['files'] as List<dynamic>)
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
      hybridshareCacheStatus: json['hybridshare_cache_status'] as int?,
      hybridsharePinStatus: json['hybridshare_pin_status'] as int?,
      isDir: json['isdir'] as bool,
      name: json['name'] as String,
      path: json['path'] as String,
    );

Map<String, dynamic> _$DirectoryToJson(Directory instance) => <String, dynamic>{
      'hybridshare_cache_status': instance.hybridshareCacheStatus,
      'hybridshare_pin_status': instance.hybridsharePinStatus,
      'isdir': instance.isDir,
      'name': instance.name,
      'path': instance.path,
    };
