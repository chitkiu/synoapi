import 'package:json_annotation/json_annotation.dart';

import '../../ns_common_models.dart';

part 'ns_settings_models.g.dart';

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
