// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ns_notebook_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NoteStationNotebookList _$NoteStationNotebookListFromJson(
        Map<String, dynamic> json) =>
    NoteStationNotebookList(
      notebooks: (json['notebooks'] as List<dynamic>)
          .map((e) => NoteStationNotebook.fromJson(e as Map<String, dynamic>))
          .toList(),
      offset: json['offset'] as int,
      total: json['total'] as int,
    );

Map<String, dynamic> _$NoteStationNotebookListToJson(
        NoteStationNotebookList instance) =>
    <String, dynamic>{
      'notebooks': instance.notebooks,
      'offset': instance.offset,
      'total': instance.total,
    };

NoteStationNotebook _$NoteStationNotebookFromJson(Map<String, dynamic> json) =>
    NoteStationNotebook(
      acl: json['acl'] == null
          ? null
          : NoteStationAcl.fromJson(json['acl'] as Map<String, dynamic>),
      archive: json['archive'] as bool?,
      category: json['category'] as String?,
      creationTime: json['ctime'] as int?,
      individualShared: json['individual_shared'] as bool?,
      items:
          (json['items'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      linkId: json['link_id'] as String?,
      modifyTime: json['mtime'] as int?,
      id: json['object_id'] as String,
      owner: json['owner'] == null
          ? null
          : NoteStationOwner.fromJson(json['owner'] as Map<String, dynamic>),
      perm: $enumDecodeNullable(
          _$NoteStationPermissionTypeEnumMap, json['perm'],
          unknownValue: NoteStationPermissionType.other),
      preset: json['preset'] as bool?,
      stack: json['stack'] as String?,
      title: json['title'] as String,
      version: json['ver'] as String,
    );

Map<String, dynamic> _$NoteStationNotebookToJson(
        NoteStationNotebook instance) =>
    <String, dynamic>{
      'acl': instance.acl,
      'archive': instance.archive,
      'category': instance.category,
      'ctime': instance.creationTime,
      'individual_shared': instance.individualShared,
      'items': instance.items,
      'link_id': instance.linkId,
      'mtime': instance.modifyTime,
      'object_id': instance.id,
      'owner': instance.owner,
      'perm': _$NoteStationPermissionTypeEnumMap[instance.perm],
      'preset': instance.preset,
      'stack': instance.stack,
      'title': instance.title,
      'ver': instance.version,
    };

const _$NoteStationPermissionTypeEnumMap = {
  NoteStationPermissionType.owner: 'owner',
  NoteStationPermissionType.ro: 'ro',
  NoteStationPermissionType.rw: 'rw',
  NoteStationPermissionType.other: 'other',
};
