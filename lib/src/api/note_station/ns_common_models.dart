import 'package:json_annotation/json_annotation.dart';

part 'ns_common_models.g.dart';

enum NoteStationColor {
  blue,
  white,
  other
}

enum NoteStationPermissionType {
  owner,
  ro,
  rw,
  other,
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

  @JsonKey(name: "perm", unknownEnumValue: NoteStationPermissionType.other)
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
