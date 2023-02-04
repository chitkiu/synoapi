// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

APIInfoQuery _$APIInfoQueryFromJson(Map<String, dynamic> json) => APIInfoQuery(
      key: json['key'] as String?,
      path: json['path'] as String?,
      minVersion: json['minVersion'] as int?,
      maxVersion: json['maxVersion'] as int?,
    );

Map<String, dynamic> _$APIInfoQueryToJson(APIInfoQuery instance) =>
    <String, dynamic>{
      'key': instance.key,
      'path': instance.path,
      'minVersion': instance.minVersion,
      'maxVersion': instance.maxVersion,
    };
