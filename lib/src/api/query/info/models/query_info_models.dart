import 'package:json_annotation/json_annotation.dart';

part 'query_info_models.g.dart';

@JsonSerializable()
class APIInfoQuery {
  String? key;
  String? path;
  int? minVersion;
  int? maxVersion;

  APIInfoQuery({this.key, this.path, this.minVersion, this.maxVersion});

  factory APIInfoQuery.fromJson(Map<String, dynamic> json) => _$APIInfoQueryFromJson(json);

  Map<String, dynamic> toJson() => _$APIInfoQueryToJson(this);
}
