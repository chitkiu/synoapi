// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ns_note_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NoteStationNoteList _$NoteStationNoteListFromJson(Map<String, dynamic> json) =>
    NoteStationNoteList(
      notes: (json['notes'] as List<dynamic>)
          .map((e) => NoteStationNoteInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      offset: json['offset'] as int,
      total: json['total'] as int,
    );

Map<String, dynamic> _$NoteStationNoteListToJson(
        NoteStationNoteList instance) =>
    <String, dynamic>{
      'notes': instance.notes,
      'offset': instance.offset,
      'total': instance.total,
    };

NoteStationNoteInfo _$NoteStationNoteInfoFromJson(Map<String, dynamic> json) =>
    NoteStationNoteInfo(
      acl: json['acl'] == null
          ? null
          : NoteStationAcl.fromJson(json['acl'] as Map<String, dynamic>),
      archive: json['archive'] as bool?,
      brief: json['brief'] as String?,
      category: $enumDecodeNullable(
          _$NoteStationCategoryEnumMap, json['category'],
          unknownValue: NoteStationCategory.other),
      creationTime: json['ctime'] as int?,
      encrypt: json['encrypt'] as bool?,
      modifyTime: json['mtime'] as int?,
      id: json['object_id'] as String,
      owner: NoteStationOwner.fromJson(json['owner'] as Map<String, dynamic>),
      parentId: json['parent_id'] as String?,
      perm: $enumDecodeNullable(
          _$NoteStationPermissionTypeEnumMap, json['perm'],
          unknownValue: NoteStationPermissionType.other),
      recycle: json['recycle'] as bool?,
      thumb: json['thumb'] as String?,
      title: json['title'] as String,
      version: json['ver'] as String,
    );

Map<String, dynamic> _$NoteStationNoteInfoToJson(
        NoteStationNoteInfo instance) =>
    <String, dynamic>{
      'acl': instance.acl,
      'archive': instance.archive,
      'brief': instance.brief,
      'category': _$NoteStationCategoryEnumMap[instance.category],
      'ctime': instance.creationTime,
      'encrypt': instance.encrypt,
      'mtime': instance.modifyTime,
      'object_id': instance.id,
      'owner': instance.owner,
      'parent_id': instance.parentId,
      'perm': _$NoteStationPermissionTypeEnumMap[instance.perm],
      'recycle': instance.recycle,
      'thumb': instance.thumb,
      'title': instance.title,
      'ver': instance.version,
    };

const _$NoteStationCategoryEnumMap = {
  NoteStationCategory.notebook: 'notebook',
  NoteStationCategory.note: 'note',
  NoteStationCategory.other: 'other',
};

const _$NoteStationPermissionTypeEnumMap = {
  NoteStationPermissionType.owner: 'owner',
  NoteStationPermissionType.ro: 'ro',
  NoteStationPermissionType.rw: 'rw',
  NoteStationPermissionType.other: 'other',
};

NoteStationNoteDataInfo _$NoteStationNoteDataInfoFromJson(
        Map<String, dynamic> json) =>
    NoteStationNoteDataInfo(
      acl: json['acl'] == null
          ? null
          : NoteStationAcl.fromJson(json['acl'] as Map<String, dynamic>),
      archive: json['archive'] as bool?,
      attachment: json['attachment'] as String?,
      brief: json['brief'] as String?,
      category: json['category'] as String?,
      commitMessage: json['commit_msg'] == null
          ? null
          : NoteStationNoteCommitMessage.fromJson(
              json['commit_msg'] as Map<String, dynamic>),
      content: json['content'] as String?,
      creationTime: json['ctime'] as int?,
      encrypt: json['encrypt'] as bool?,
      individualJoined: json['individual_joined'] as bool?,
      individualShared: json['individual_shared'] as bool?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      linkId: json['link_id'] as String?,
      location: json['location'] as String?,
      longitude: (json['longitude'] as num?)?.toDouble(),
      modifyTime: json['mtime'] as int?,
      id: json['object_id'] as String,
      oldParentId: json['old_parent_id'] as String?,
      owner: json['owner'] == null
          ? null
          : NoteStationOwner.fromJson(json['owner'] as Map<String, dynamic>),
      parentId: json['parent_id'] as String?,
      perm: $enumDecodeNullable(
          _$NoteStationPermissionTypeEnumMap, json['perm'],
          unknownValue: NoteStationPermissionType.other),
      recycle: json['recycle'] as bool?,
      sourceUrl: json['source_url'] as String?,
      tag: (json['tag'] as List<dynamic>?)?.map((e) => e as String).toList(),
      thumb: json['thumb'] as String?,
      title: json['title'] as String,
      version: json['ver'] as String,
    );

Map<String, dynamic> _$NoteStationNoteDataInfoToJson(
        NoteStationNoteDataInfo instance) =>
    <String, dynamic>{
      'acl': instance.acl,
      'archive': instance.archive,
      'attachment': instance.attachment,
      'brief': instance.brief,
      'category': instance.category,
      'commit_msg': instance.commitMessage,
      'content': instance.content,
      'ctime': instance.creationTime,
      'encrypt': instance.encrypt,
      'individual_joined': instance.individualJoined,
      'individual_shared': instance.individualShared,
      'latitude': instance.latitude,
      'link_id': instance.linkId,
      'location': instance.location,
      'longitude': instance.longitude,
      'mtime': instance.modifyTime,
      'object_id': instance.id,
      'old_parent_id': instance.oldParentId,
      'owner': instance.owner,
      'parent_id': instance.parentId,
      'perm': _$NoteStationPermissionTypeEnumMap[instance.perm],
      'recycle': instance.recycle,
      'source_url': instance.sourceUrl,
      'tag': instance.tag,
      'thumb': instance.thumb,
      'title': instance.title,
      'ver': instance.version,
    };

NoteStationNoteCommitMessage _$NoteStationNoteCommitMessageFromJson(
        Map<String, dynamic> json) =>
    NoteStationNoteCommitMessage(
      device: json['device'] as String?,
      listable: json['listable'] as bool?,
    );

Map<String, dynamic> _$NoteStationNoteCommitMessageToJson(
        NoteStationNoteCommitMessage instance) =>
    <String, dynamic>{
      'device': instance.device,
      'listable': instance.listable,
    };
