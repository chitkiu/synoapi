import 'package:json_annotation/json_annotation.dart';

part 'ns_models.g.dart';

@JsonSerializable()
class NoteStationSettings {

  @JsonKey(name: "copy_delete_orig")
  bool? copyDeleteOriginal;

  @JsonKey(name: "font_size")
  String? fontSize;

  @JsonKey(name: "inline_thumb")
  bool? inlineThumbnail;

  @JsonKey(name: "pointer_color")
  String? pointerColor; //TODO Move to enum [blue, white, ]

  @JsonKey(name: "search_attachment")
  bool? searchAttachment;

  @JsonKey(name: "slide_theme")
  String? slideTheme; //TODO Move to enum [blue, white, ]

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

  NoteStationSettings(
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
      this.todoShowBadge);

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
  bool? isAdmin;

  @JsonKey(name: "search_precisely")
  bool? searchPrecisely;

  @JsonKey(name: "uid")
  int? uid;

  @JsonKey(name: "username")
  String? username;

  @JsonKey(name: "version")
  NoteStationInfoVersion? version;

  NoteStationInfo(this.allowShare, this.hash, this.isAdmin,
      this.searchPrecisely, this.uid, this.username, this.version);

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

  NoteStationInfoVersion(this.build, this.hotfix, this.major, this.minor);

  factory NoteStationInfoVersion.fromJson(Map<String, dynamic> json) => _$NoteStationInfoVersionFromJson(json);

  Map<String, dynamic> toJson() => _$NoteStationInfoVersionToJson(this);

}

@JsonSerializable()
class NoteStationNoteList {

  @JsonKey(name: "notes")
  List<NoteStationNote>? notes;

  @JsonKey(name: "offset")
  int? offset;

  @JsonKey(name: "total")
  int? total;

  NoteStationNoteList(this.notes, this.offset, this.total);

  factory NoteStationNoteList.fromJson(Map<String, dynamic> json) => _$NoteStationNoteListFromJson(json);

  Map<String, dynamic> toJson() => _$NoteStationNoteListToJson(this);

}

@JsonSerializable()
class NoteStationNote {

  @JsonKey(name: "acl")
  NoteStationAcl? acl;

  @JsonKey(name: "archive")
  bool? archive;

  @JsonKey(name: "brief")
  String? brief;

  @JsonKey(name: "category")
  String? category; //TODO: note

  @JsonKey(name: "ctime")
  int? creationTime;

  @JsonKey(name: "encrypt")
  bool? encrypt;

  @JsonKey(name: "mtime")
  int? modifyTime;

  @JsonKey(name: "object_id")
  String? id;

  @JsonKey(name: "owner")
  NoteStationOwner? owner;

  @JsonKey(name: "parent_id")
  String? parentId;

  @JsonKey(name: "perm")
  String? perm; //TODO owner

  @JsonKey(name: "recycle")
  bool? recycle;

  @JsonKey(name: "thumb")
  String? thumb; //TODO idk type

  @JsonKey(name: "title")
  String? title;

  @JsonKey(name: "ver")
  String? version;

  NoteStationNote(
      this.acl,
      this.archive,
      this.brief,
      this.category,
      this.creationTime,
      this.encrypt,
      this.modifyTime,
      this.id,
      this.owner,
      this.parentId,
      this.perm,
      this.recycle,
      this.thumb,
      this.title,
      this.version);

  factory NoteStationNote.fromJson(Map<String, dynamic> json) => _$NoteStationNoteFromJson(json);

  Map<String, dynamic> toJson() => _$NoteStationNoteToJson(this);
}

@JsonSerializable()
class NoteStationNotebookList {

  @JsonKey(name: "notebooks")
  List<NoteStationNotebook>? notebooks;

  @JsonKey(name: "offset")
  int? offset;

  @JsonKey(name: "total")
  int? total;

  NoteStationNotebookList(this.notebooks, this.offset, this.total);

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
  String? category; //TODO: notebook

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
  String? id;

  @JsonKey(name: "owner")
  NoteStationOwner? owner;

  @JsonKey(name: "perm")
  String? perm; //TODO owner

  @JsonKey(name: "preset")
  bool? preset;

  @JsonKey(name: "stack")
  String? stack;

  @JsonKey(name: "title")
  String? title;

  @JsonKey(name: "ver")
  String? version;

  NoteStationNotebook(
      this.acl,
      this.archive,
      this.category,
      this.creationTime,
      this.individualShared,
      this.items,
      this.linkId,
      this.modifyTime,
      this.id,
      this.owner,
      this.perm,
      this.preset,
      this.stack,
      this.title,
      this.version);

  factory NoteStationNotebook.fromJson(Map<String, dynamic> json) => _$NoteStationNotebookFromJson(json);

  Map<String, dynamic> toJson() => _$NoteStationNotebookToJson(this);
}

@JsonSerializable()
class NoteStationAcl {

  @JsonKey(name: "enabled")
  bool? enabled;

  @Deprecated("Use dsmGroup instead")
  @JsonKey(name: "dsm_group")
  dynamic private_dsmGroup;

  Map<int?, NoteStationAclDSMGroup?>? get dsmGroup => private_dsmGroup;

  NoteStationAcl(this.enabled, this.private_dsmGroup);

  factory NoteStationAcl.fromJson(Map<String, dynamic> json) => _$NoteStationAclFromJson(json);

  Map<String, dynamic> toJson() => _$NoteStationAclToJson(this);
}

@JsonSerializable()
class NoteStationAclDSMGroup {

  @JsonKey(name: "inherit")
  bool? inherit;

  @JsonKey(name: "perm")
  String? permission; //TODO: "rw"

  NoteStationAclDSMGroup(this.inherit, this.permission);

  factory NoteStationAclDSMGroup.fromJson(Map<String, dynamic> json) => _$NoteStationAclDSMGroupFromJson(json);

  Map<String, dynamic> toJson() => _$NoteStationAclDSMGroupToJson(this);
}

@JsonSerializable()
class NoteStationOwner {

  @JsonKey(name: "display_name")
  String? displayName;

  @JsonKey(name: "uid")
  int? uid;

  NoteStationOwner(this.displayName, this.uid);

  factory NoteStationOwner.fromJson(Map<String, dynamic> json) => _$NoteStationOwnerFromJson(json);

  Map<String, dynamic> toJson() => _$NoteStationOwnerToJson(this);
}
