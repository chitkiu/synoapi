import 'package:json_annotation/json_annotation.dart';

import '../../ns_common_models.dart';

part 'ns_note_models.g.dart';

enum NoteStationCategory {
  notebook,
  note
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
  String title;

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
    required this.title,
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

