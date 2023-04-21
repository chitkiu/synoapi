// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ns_settings_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NoteStationSettings _$NoteStationSettingsFromJson(Map<String, dynamic> json) =>
    NoteStationSettings(
      copyDeleteOriginal: json['copy_delete_orig'] as bool?,
      fontSize: json['font_size'] as String?,
      inlineThumbnail: json['inline_thumb'] as bool?,
      pointerColor: $enumDecodeNullable(
          _$NoteStationColorEnumMap, json['pointer_color'],
          unknownValue: NoteStationColor.other),
      searchAttachment: json['search_attachment'] as bool?,
      slideTheme: $enumDecodeNullable(
          _$NoteStationColorEnumMap, json['slide_theme'],
          unknownValue: NoteStationColor.other),
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
  NoteStationColor.other: 'other',
};
