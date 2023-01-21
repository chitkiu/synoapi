// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ns_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NoteStationSettings _$NoteStationSettingsFromJson(Map<String, dynamic> json) =>
    NoteStationSettings(
      json['copy_delete_orig'] as bool?,
      json['font_size'] as String?,
      json['inline_thumb'] as bool?,
      json['pointer_color'] as String?,
      json['search_attachment'] as bool?,
      json['slide_theme'] as String?,
      json['spell_check'] as bool?,
      json['todo_due_date_day'] as String?,
      json['todo_export_info'] as String?,
      json['todo_priority'] as int?,
      json['todo_purge'] as String?,
      json['todo_reminder_offset'] as int?,
      json['todo_reminder_predefined'] as String?,
      json['todo_reminder_unit'] as String?,
      json['todo_reminder_value'] as int?,
      json['todo_show_badge'] as bool?,
    );

Map<String, dynamic> _$NoteStationSettingsToJson(
        NoteStationSettings instance) =>
    <String, dynamic>{
      'copy_delete_orig': instance.copyDeleteOriginal,
      'font_size': instance.fontSize,
      'inline_thumb': instance.inlineThumbnail,
      'pointer_color': instance.pointerColor,
      'search_attachment': instance.searchAttachment,
      'slide_theme': instance.slideTheme,
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

NoteStationInfo _$NoteStationInfoFromJson(Map<String, dynamic> json) =>
    NoteStationInfo(
      json['allow_share'] as bool?,
      json['hash'] as String?,
      json['is_admin'] as bool?,
      json['search_precisely'] as bool?,
      json['uid'] as int?,
      json['username'] as String?,
      json['version'] == null
          ? null
          : NoteStationInfoVersion.fromJson(
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
      json['build'] as String?,
      json['hotfix'] as String?,
      json['major'] as String?,
      json['minor'] as String?,
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
      (json['notes'] as List<dynamic>?)
          ?.map((e) => NoteStationNote.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['offset'] as int?,
      json['total'] as int?,
    );

Map<String, dynamic> _$NoteStationNoteListToJson(
        NoteStationNoteList instance) =>
    <String, dynamic>{
      'notes': instance.notes,
      'offset': instance.offset,
      'total': instance.total,
    };

NoteStationNote _$NoteStationNoteFromJson(Map<String, dynamic> json) =>
    NoteStationNote(
      json['acl'] == null
          ? null
          : NoteStationAcl.fromJson(json['acl'] as Map<String, dynamic>),
      json['archive'] as bool?,
      json['brief'] as String?,
      json['category'] as String?,
      json['ctime'] as int?,
      json['encrypt'] as bool?,
      json['mtime'] as int?,
      json['object_id'] as String?,
      json['owner'] == null
          ? null
          : NoteStationOwner.fromJson(json['owner'] as Map<String, dynamic>),
      json['parent_id'] as String?,
      json['perm'] as String?,
      json['recycle'] as bool?,
      json['thumb'] as String?,
      json['title'] as String?,
      json['ver'] as String?,
    );

Map<String, dynamic> _$NoteStationNoteToJson(NoteStationNote instance) =>
    <String, dynamic>{
      'acl': instance.acl,
      'archive': instance.archive,
      'brief': instance.brief,
      'category': instance.category,
      'ctime': instance.creationTime,
      'encrypt': instance.encrypt,
      'mtime': instance.modifyTime,
      'object_id': instance.id,
      'owner': instance.owner,
      'parent_id': instance.parentId,
      'perm': instance.perm,
      'recycle': instance.recycle,
      'thumb': instance.thumb,
      'title': instance.title,
      'ver': instance.version,
    };

NoteStationNotebookList _$NoteStationNotebookListFromJson(
        Map<String, dynamic> json) =>
    NoteStationNotebookList(
      (json['notebooks'] as List<dynamic>?)
          ?.map((e) => NoteStationNotebook.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['offset'] as int?,
      json['total'] as int?,
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
      json['acl'] == null
          ? null
          : NoteStationAcl.fromJson(json['acl'] as Map<String, dynamic>),
      json['archive'] as bool?,
      json['category'] as String?,
      json['ctime'] as int?,
      json['individual_shared'] as bool?,
      (json['items'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      json['link_id'] as String?,
      json['mtime'] as int?,
      json['object_id'] as String?,
      json['owner'] == null
          ? null
          : NoteStationOwner.fromJson(json['owner'] as Map<String, dynamic>),
      json['perm'] as String?,
      json['preset'] as bool?,
      json['stack'] as String?,
      json['title'] as String?,
      json['ver'] as String?,
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
      'perm': instance.perm,
      'preset': instance.preset,
      'stack': instance.stack,
      'title': instance.title,
      'ver': instance.version,
    };

NoteStationAcl _$NoteStationAclFromJson(Map<String, dynamic> json) =>
    NoteStationAcl(
      json['enabled'] as bool?,
      json['dsm_group'],
    );

Map<String, dynamic> _$NoteStationAclToJson(NoteStationAcl instance) =>
    <String, dynamic>{
      'enabled': instance.enabled,
      'dsm_group': instance.private_dsmGroup,
    };

NoteStationAclDSMGroup _$NoteStationAclDSMGroupFromJson(
        Map<String, dynamic> json) =>
    NoteStationAclDSMGroup(
      json['inherit'] as bool?,
      json['perm'] as String?,
    );

Map<String, dynamic> _$NoteStationAclDSMGroupToJson(
        NoteStationAclDSMGroup instance) =>
    <String, dynamic>{
      'inherit': instance.inherit,
      'perm': instance.permission,
    };

NoteStationOwner _$NoteStationOwnerFromJson(Map<String, dynamic> json) =>
    NoteStationOwner(
      json['display_name'] as String?,
      json['uid'] as int?,
    );

Map<String, dynamic> _$NoteStationOwnerToJson(NoteStationOwner instance) =>
    <String, dynamic>{
      'display_name': instance.displayName,
      'uid': instance.uid,
    };
