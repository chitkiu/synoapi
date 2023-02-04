import 'package:json_annotation/json_annotation.dart';

part 'ns_models.g.dart';

enum NoteStationCategory {
  notebook,
  note
}

enum NoteStationColor {
  blue,
  white
}

enum NoteStationPermissionType {
  owner,
  ro,
  rw
}

@JsonSerializable()
class NoteStationSettings {

  @JsonKey(name: "copy_delete_orig")
  bool? copyDeleteOriginal;

  @JsonKey(name: "font_size")
  String? fontSize;

  @JsonKey(name: "inline_thumb")
  bool? inlineThumbnail;

  @JsonKey(name: "pointer_color")
  NoteStationColor? pointerColor;

  @JsonKey(name: "search_attachment")
  bool? searchAttachment;

  @JsonKey(name: "slide_theme")
  NoteStationColor? slideTheme;

  @JsonKey(name: "spell_check")
  bool? spellCheck;

  @JsonKey(name: "todo_due_date_day")
  String? todoDueDateDay; //TODO: [none]

  @JsonKey(name: "todo_export_info")
  String? todoExportInfo; //TODO: "title,subtask,comment"

  @JsonKey(name: "todo_priority")
  int? todoPriority;

  @JsonKey(name: "todo_purge")
  String? todoPurge; //TODO: none

  @JsonKey(name: "todo_reminder_offset")
  int? todoReminderOffset;

  @JsonKey(name: "todo_reminder_predefined")
  String? todoReminderPredefined; //TODO: none

  @JsonKey(name: "todo_reminder_unit")
  String? todoReminderUnit; //TODO: hour

  @JsonKey(name: "todo_reminder_value")
  int? todoReminderValue;

  @JsonKey(name: "todo_show_badge")
  bool? todoShowBadge;

  NoteStationSettings({
      this.copyDeleteOriginal,
      this.fontSize,
      this.inlineThumbnail,
      this.pointerColor,
      this.searchAttachment,
      this.slideTheme,
      this.spellCheck,
      this.todoDueDateDay,
      this.todoExportInfo,
      this.todoPriority,
      this.todoPurge,
      this.todoReminderOffset,
      this.todoReminderPredefined,
      this.todoReminderUnit,
      this.todoReminderValue,
      this.todoShowBadge
  });

  factory NoteStationSettings.fromJson(Map<String, dynamic> json) => _$NoteStationSettingsFromJson(json);

  Map<String, dynamic> toJson() => _$NoteStationSettingsToJson(this);

}

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

@JsonSerializable()
class NoteStationNoteList {

  @JsonKey(name: "notes")
  List<NoteStationNoteInfo> notes;

  @JsonKey(name: "offset")
  int offset;

  @JsonKey(name: "total")
  int total;

  NoteStationNoteList({required this.notes, required this.offset, required this.total});

  factory NoteStationNoteList.fromJson(Map<String, dynamic> json) => _$NoteStationNoteListFromJson(json);

  Map<String, dynamic> toJson() => _$NoteStationNoteListToJson(this);

}

@JsonSerializable()
class NoteStationNoteInfo {

  @JsonKey(name: "acl")
  NoteStationAcl? acl;

  @JsonKey(name: "archive")
  bool? archive;

  @JsonKey(name: "brief")
  String? brief;

  @JsonKey(name: "category")
  NoteStationCategory? category;

  @JsonKey(name: "ctime")
  int? creationTime;

  @JsonKey(name: "encrypt")
  bool? encrypt;

  @JsonKey(name: "mtime")
  int? modifyTime;

  @JsonKey(name: "object_id")
  String id;

  @JsonKey(name: "owner")
  NoteStationOwner owner;

  @JsonKey(name: "parent_id")
  String? parentId;

  @JsonKey(name: "perm")
  NoteStationPermissionType? perm;

  @JsonKey(name: "recycle")
  bool? recycle;

  @JsonKey(name: "thumb")
  String? thumb; //TODO idk type

  @JsonKey(name: "title")
  String? title;

  @JsonKey(name: "ver")
  String version;

  NoteStationNoteInfo({
      this.acl,
      this.archive,
      this.brief,
      this.category,
      this.creationTime,
      this.encrypt,
      this.modifyTime,
      required this.id,
      required this.owner,
      this.parentId,
      this.perm,
      this.recycle,
      this.thumb,
      this.title,
      required this.version
  });

  factory NoteStationNoteInfo.fromJson(Map<String, dynamic> json) => _$NoteStationNoteInfoFromJson(json);

  Map<String, dynamic> toJson() => _$NoteStationNoteInfoToJson(this);
}

@JsonSerializable()
class NoteStationNoteDataInfo {

  @JsonKey(name: "acl")
  NoteStationAcl? acl;

  @JsonKey(name: "archive")
  bool? archive;

  @JsonKey(name: "attachment")
  String? attachment; //TODO idk type

  @JsonKey(name: "brief")
  String? brief;

  @JsonKey(name: "category")
  String? category;

  @JsonKey(name: "commit_msg")
  NoteStationNoteCommitMessage? commitMessage;

  @JsonKey(name: "content")
  String? content;

  @JsonKey(name: "ctime")
  int? creationTime;

  @JsonKey(name: "encrypt")
  bool? encrypt;

  @JsonKey(name: "individual_joined")
  bool? individualJoined;

  @JsonKey(name: "individual_shared")
  bool? individualShared;

  @JsonKey(name: "latitude")
  double? latitude;

  @JsonKey(name: "link_id")
  String? linkId;

  @JsonKey(name: "location")
  String? location;

  @JsonKey(name: "longitude")
  double? longitude;

  @JsonKey(name: "mtime")
  int? modifyTime;

  @JsonKey(name: "object_id")
  String id;

  @JsonKey(name: "old_parent_id")
  String? oldParentId;

  @JsonKey(name: "owner")
  NoteStationOwner? owner;

  @JsonKey(name: "parent_id")
  String? parentId;

  @JsonKey(name: "perm")
  NoteStationPermissionType? perm;

  @JsonKey(name: "recycle")
  bool? recycle;

  @JsonKey(name: "source_url")
  String? sourceUrl;

  @JsonKey(name: "tag")
  List<String>? tag; //TODO idk type

  @JsonKey(name: "thumb")
  String? thumb; //TODO idk type

  @JsonKey(name: "title")
  String title;

  @JsonKey(name: "ver")
  String version;

  NoteStationNoteDataInfo({
      this.acl,
      this.archive,
      this.attachment,
      this.brief,
      this.category,
      this.commitMessage,
      this.content,
      this.creationTime,
      this.encrypt,
      this.individualJoined,
      this.individualShared,
      this.latitude,
      this.linkId,
      this.location,
      this.longitude,
      this.modifyTime,
      required this.id,
      this.oldParentId,
      this.owner,
      this.parentId,
      this.perm,
      this.recycle,
      this.sourceUrl,
      this.tag,
      this.thumb,
      required this.title,
      required this.version
  });

  factory NoteStationNoteDataInfo.fromJson(Map<String, dynamic> json) => _$NoteStationNoteDataInfoFromJson(json);

  Map<String, dynamic> toJson() => _$NoteStationNoteDataInfoToJson(this);
}

@JsonSerializable()
class NoteStationNoteCommitMessage {

  @JsonKey(name: "device")
  String? device;

  @JsonKey(name: "listable")
  bool? listable;

  NoteStationNoteCommitMessage({this.device, this.listable});

  factory NoteStationNoteCommitMessage.fromJson(Map<String, dynamic> json) => _$NoteStationNoteCommitMessageFromJson(json);

  Map<String, dynamic> toJson() => _$NoteStationNoteCommitMessageToJson(this);

}

@JsonSerializable()
class NoteStationNotebookList {

  @JsonKey(name: "notebooks")
  List<NoteStationNotebook> notebooks;

  @JsonKey(name: "offset")
  int offset;

  @JsonKey(name: "total")
  int total;

  NoteStationNotebookList({required this.notebooks, required this.offset, required this.total});

  factory NoteStationNotebookList.fromJson(Map<String, dynamic> json) => _$NoteStationNotebookListFromJson(json);

  Map<String, dynamic> toJson() => _$NoteStationNotebookListToJson(this);

}

@JsonSerializable()
class NoteStationNotebook {

  @JsonKey(name: "acl")
  NoteStationAcl? acl;

  @JsonKey(name: "archive")
  bool? archive;

  @JsonKey(name: "category")
  String? category;

  @JsonKey(name: "ctime")
  int? creationTime;

  @JsonKey(name: "individual_shared")
  bool? individualShared;

  @JsonKey(name: "items")
  List<String?>? items;

  @JsonKey(name: "link_id")
  String? linkId;

  @JsonKey(name: "mtime")
  int? modifyTime;

  @JsonKey(name: "object_id")
  String id;

  @JsonKey(name: "owner")
  NoteStationOwner? owner;

  @JsonKey(name: "perm")
  NoteStationPermissionType? perm;

  @JsonKey(name: "preset")
  bool? preset;

  @JsonKey(name: "stack")
  String? stack;

  @JsonKey(name: "title")
  String title;

  @JsonKey(name: "ver")
  String version;

  NoteStationNotebook({
      this.acl,
      this.archive,
      this.category,
      this.creationTime,
      this.individualShared,
      this.items,
      this.linkId,
      this.modifyTime,
      required this.id,
      this.owner,
      this.perm,
      this.preset,
      this.stack,
      required this.title,
      required this.version
  });

  factory NoteStationNotebook.fromJson(Map<String, dynamic> json) => _$NoteStationNotebookFromJson(json);

  Map<String, dynamic> toJson() => _$NoteStationNotebookToJson(this);
}

class NoteStationAcl {

  bool? enabled;

  Map<int?, NoteStationAclDSMGroup?>? dsmGroup;

  NoteStationAcl({this.enabled, this.dsmGroup});

  factory NoteStationAcl.fromJson(Map<String, dynamic> json) => NoteStationAcl(
    enabled: json['enabled'] as bool?,
    dsmGroup: (json['dsm_group'] as Map<String?, dynamic>?)?.map((key, value) {
      return MapEntry(
          int.parse(key ?? '0'),
          NoteStationAclDSMGroup.fromJson(value ?? {})
      );
    }),
  );

  Map<String, dynamic> toJson() => <String, dynamic>{
    'enabled': enabled,
    'dsm_group': dsmGroup,
  };
}

@JsonSerializable()
class NoteStationAclDSMGroup {

  @JsonKey(name: "inherit")
  bool? inherit;

  @JsonKey(name: "perm")
  NoteStationPermissionType? permission;

  NoteStationAclDSMGroup({this.inherit, this.permission});

  factory NoteStationAclDSMGroup.fromJson(Map<String, dynamic> json) => _$NoteStationAclDSMGroupFromJson(json);

  Map<String, dynamic> toJson() => _$NoteStationAclDSMGroupToJson(this);
}

@JsonSerializable()
class NoteStationOwner {

  @JsonKey(name: "display_name")
  String? displayName;

  @JsonKey(name: "uid")
  int uid;

  NoteStationOwner({required this.uid, this.displayName});

  factory NoteStationOwner.fromJson(Map<String, dynamic> json) => _$NoteStationOwnerFromJson(json);

  Map<String, dynamic> toJson() => _$NoteStationOwnerToJson(this);
}
