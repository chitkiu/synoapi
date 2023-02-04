import '../../context.dart';
import '../base_station_api.dart';
import 'info/ns_info.dart';
import 'note/ns_note.dart';
import 'notebook/ns_notebook.dart';
import 'settings/ns_settings.dart';
import 'shortcut/ns_shortcut.dart';
import 'smart/ns_smart.dart';
import 'tag/ns_tag.dart';
import 'todo/ns_todo.dart';

class NoteStationAPI extends BaseStationAPI {
  final session = 'NoteStation';

  late final Setting setting;
  late final Info info;
  late final Notebook notebook;
  late final Tag tag;
  late final Shortcut shortcut;
  late final Todo todo;
  late final Smart smart;
  late final Note note;

  NoteStationAPI(APIContext context): super(context, '/webapi') {
    setting = Setting(this);
    info = Info(this);
    notebook = Notebook(this);
    tag = Tag(this);
    shortcut = Shortcut(this);
    todo = Todo(this);
    smart = Smart(this);
    note = Note(this);
  }

}
