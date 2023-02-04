// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ns_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NoteStationSettings _$NoteStationSettingsFromJson(Map<String, dynamic> json) =>
    NoteStationSettings(
      copyDeleteOriginal: json['copy_delete_orig'] as bool?,
      fontSize: json['font_size'] as String?,
      inlineThumbnail: json['inline_thumb'] as bool?,
      pointerColor:
          $enumDecodeNullable(_$NoteStationColorEnumMap, json['pointer_color']),
      searchAttachment: json['search_attachment'] as bool?,
      slideTheme:
          $enumDecodeNullable(_$NoteStationColorEnumMap, json['slide_theme']),
      spellCheck: json['spell_check'] as bool?,
      todoDueDateDay: json['todo_due_date_day'] as String?,
      todoExportInfo: json['todo_export_info'] as String?,
      todoPriority: json['todo_priority'] as int?,
      todoPurge: json['todo_purge'] as String?,
      todoReminderOffset: json['todo_reminder_offset'] as int?,
      todoReminderPredefined: json['todo_reminder_predefined'] as String?,
      todoReminderUnit: json['todo_reminder_unit'] as String?,
      todoReminderValue: json['todo_reminder_value'] as int?,
      todoShowBadge: json['todo_show_badge'] as bool?,
    );

Map<String, dynamic> _$NoteStationSettingsToJson(
        NoteStationSettings instance) =>
    <String, dynamic>{
      'copy_delete_orig': instance.copyDeleteOriginal,
      'font_size': instance.fontSize,
      'inline_thumb': instance.inlineThumbnail,
      'pointer_color': _$NoteStationColorEnumMap[instance.pointerColor],
      'search_attachment': instance.searchAttachment,
      'slide_theme': _$NoteStationColorEnumMap[instance.slideTheme],
      'spell_check': instance.spellCheck,
      'todo_due_date_day': instance.todoDueDateDay,
      'todo_export_info': instance.todoExportInfo,
      'todo_priority': instance.todoPriority,
      'todo_purge': instance.todoPurge,
      'todo_reminder_offset': instance.todoReminderOffset,
      'todo_reminder_predefined': instance.todoReminderPredefined,
      'todo_reminder_unit': instance.todoReminderUnit,
      'todo_reminder_value': instance.todoReminderValue,
      'todo_show_badge': instance.todoShowBadge,
    };

const _$NoteStationColorEnumMap = {
  NoteStationColor.blue: 'blue',
  NoteStationColor.white: 'white',
};

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
      category:
          $enumDecodeNullable(_$NoteStationCategoryEnumMap, json['category']),
      creationTime: json['ctime'] as int?,
      encrypt: json['encrypt'] as bool?,
      modifyTime: json['mtime'] as int?,
      id: json['object_id'] as String,
      owner: NoteStationOwner.fromJson(json['owner'] as Map<String, dynamic>),
      parentId: json['parent_id'] as String?,
      perm:
          $enumDecodeNullable(_$NoteStationPermissionTypeEnumMap, json['perm']),
      recycle: json['recycle'] as bool?,
      thumb: json['thumb'] as String?,
      title: json['title'] as String?,
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
};

const _$NoteStationPermissionTypeEnumMap = {
  NoteStationPermissionType.owner: 'owner',
  NoteStationPermissionType.ro: 'ro',
  NoteStationPermissionType.rw: 'rw',
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
      perm:
          $enumDecodeNullable(_$NoteStationPermissionTypeEnumMap, json['perm']),
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
      perm:
          $enumDecodeNullable(_$NoteStationPermissionTypeEnumMap, json['perm']),
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
