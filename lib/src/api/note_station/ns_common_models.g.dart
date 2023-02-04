// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ns_common_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NoteStationAclDSMGroup _$NoteStationAclDSMGroupFromJson(
        Map<String, dynamic> json) =>
    NoteStationAclDSMGroup(
      inherit: json['inherit'] as bool?,
      permission:
          $enumDecodeNullable(_$NoteStationPermissionTypeEnumMap, json['perm']),
    );

Map<String, dynamic> _$NoteStationAclDSMGroupToJson(
        NoteStationAclDSMGroup instance) =>
    <String, dynamic>{
      'inherit': instance.inherit,
      'perm': _$NoteStationPermissionTypeEnumMap[instance.permission],
    };

const _$NoteStationPermissionTypeEnumMap = {
  NoteStationPermissionType.owner: 'owner',
  NoteStationPermissionType.ro: 'ro',
  NoteStationPermissionType.rw: 'rw',
};

NoteStationOwner _$NoteStationOwnerFromJson(Map<String, dynamic> json) =>
    NoteStationOwner(
      uid: json['uid'] as int,
      displayName: json['display_name'] as String?,
    );

Map<String, dynamic> _$NoteStationOwnerToJson(NoteStationOwner instance) =>
    <String, dynamic>{
      'display_name': instance.displayName,
      'uid': instance.uid,
    };
