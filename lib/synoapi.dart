/// Support for doing something awesome.
///
/// More dartdocs go here.
library synoapi;

export 'src/api/auth.dart';
export 'src/api/downloadstation.dart' hide Info, Statistic, Task;
export 'src/api/downloadstation2.dart' hide Task;
export 'src/api/filestation.dart' hide List;
export 'src/api/notestation/notestation.dart' hide Setting, Info, Notebook, Tag, Shortcut, Todo, Smart, Note;
export 'src/api/query.dart' hide Info;
export 'src/const.dart';
export 'src/context.dart';
export 'src/model.dart';

export 'package:cookie_jar/cookie_jar.dart';