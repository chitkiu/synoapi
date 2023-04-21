import 'package:json_annotation/json_annotation.dart';

import '../../ns_common_models.dart';

part 'ns_notebook_models.g.dart';

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

  @JsonKey(name: "perm", unknownEnumValue: NoteStationPermissionType.other)
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
