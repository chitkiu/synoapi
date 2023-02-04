// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ns_info_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NoteStationInfo _$NoteStationInfoFromJson(Map<String, dynamic> json) =>
    NoteStationInfo(
      allowShare: json['allow_share'] as bool?,
      hash: json['hash'] as String?,
      isAdmin: json['is_admin'] as bool,
      searchPrecisely: json['search_precisely'] as bool?,
      uid: json['uid'] as int,
      username: json['username'] as String,
      version: NoteStationInfoVersion.fromJson(
          json['version'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NoteStationInfoToJson(NoteStationInfo instance) =>
    <String, dynamic>{
      'allow_share': instance.allowShare,
      'hash': instance.hash,
      'is_admin': instance.isAdmin,
      'search_precisely': instance.searchPrecisely,
      'uid': instance.uid,
      'username': instance.username,
      'version': instance.version,
    };

NoteStationInfoVersion _$NoteStationInfoVersionFromJson(
        Map<String, dynamic> json) =>
    NoteStationInfoVersion(
      build: json['build'] as String?,
      hotfix: json['hotfix'] as String?,
      major: json['major'] as String?,
      minor: json['minor'] as String?,
    );

Map<String, dynamic> _$NoteStationInfoVersionToJson(
        NoteStationInfoVersion instance) =>
    <String, dynamic>{
      'build': instance.build,
      'hotfix': instance.hotfix,
      'major': instance.major,
      'minor': instance.minor,
    };
