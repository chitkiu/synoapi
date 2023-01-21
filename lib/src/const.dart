const String UNKNOWN = 'Unknown';

class Syno {
  static final name = 'SYNO';

  static _Api get API => _Api(name);

  static _Ds get DownloadStation => _Ds(name);

  static _Ds2 get DownloadStation2 => _Ds2(name);

  static _Fs get FileStation => _Fs(name);

  static _Ns get NoteStation => _Ns(name);
}

class _Api {
  final name = 'API';
  final String _base;

  _Api(this._base);

  String get Info => [_base, name, 'Info'].join('.');

  String get Auth => [_base, name, 'Auth'].join('.');
}

class _Ds {
  final name = 'DownloadStation';
  final String _base;

  _Ds(this._base);

  String get Info => [_base, name, 'Info'].join('.');

  String get Schedule => [_base, name, 'Schedule'].join('.');

  String get Task => [_base, name, 'Task'].join('.');

  String get Statistic => [_base, name, 'Statistic'].join('.');

  String get BTSearch => [_base, name, 'BTSearch'].join('.');

  _Rss get RSS => _Rss([_base, name].join('.'));
}

class _Ds2 {
  final name = 'DownloadStation2';
  final String _base;

  _Ds2(this._base);

  String get Task => [_base, name, 'Task'].join('.');
}

class _Ns {
  final name = 'NoteStation';
  final String _base;

  _Ns(this._base);

  String get Setting => [_base, name, 'Setting'].join('.');

  String get Info => [_base, name, 'Info'].join('.');

  String get Notebook => [_base, name, 'Notebook'].join('.');

  String get Tag => [_base, name, 'Tag'].join('.');

  String get Shortcut => [_base, name, 'Shortcut'].join('.');

  String get Todo => [_base, name, 'Todo'].join('.');

  String get Smart => [_base, name, 'Smart'].join('.');

  String get Note => [_base, name, 'Note'].join('.');
}

class _Rss {
  final name = 'RSS';
  final String _base;

  _Rss(this._base);

  String get Site => [_base, name, 'Site'].join('.');

  String get Feed => [_base, name, 'Feed'].join('.');
}

class _Fs {
  final name = 'FileStation';
  final String _base;

  _Fs(this._base);

  String get List => [_base, name, 'List'].join('.');
}
