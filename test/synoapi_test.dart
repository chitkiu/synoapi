import 'dart:io';

import 'package:logging/logging.dart';
import 'package:synoapi/synoapi.dart' as api;
import 'package:test/test.dart';

import 'config.dart';

void main() {
  Logger.root.level = Level.FINEST;
  Logger.root.onRecord.listen((l) {
    print('${l.time} ${l.level} ${l.loggerName} | ${l.message}${l.error ?? ''}${l.stackTrace ?? ''}');
  });
  final l = Logger('unittest');

  // test setup
  var authOk;
  var cntx = api.APIContext(SYNO_HOST, api.CookieJar(), port: SYNO_PORT);
  var queryApi = api.QueryAPI(cntx);
  var dsApi = api.DownloadStationAPI(cntx);
  var fsApi = api.FileStationAPI(cntx);
  var nsApi = api.NoteStationAPI(cntx);
  setUp(() async {
    authOk = await cntx.authApp(
        SYNO_USER,
        SYNO_USER_PASS,
        otpCallback: () async {
          String? otpCode;
          while (otpCode == null || otpCode.trim().isEmpty) {
            print('OTP Code? >');
            otpCode = stdin.readLineSync();
          }
          return otpCode;
        },
    );
  });

  test('Auth OK?', () {
    expect(authOk, equals(true));
  });

  group('Test Query API', () {
    test('Test API Info Query Result', () async {
      final resp = await queryApi.info.apiInfo();
      var apiQueryResult = resp.data;
      expect(apiQueryResult, isNotEmpty);
    });
  });

  group('Test Download Station API', () {
    test('Test Get Version', () async {
      final resp = await dsApi.info.getInfo();
      final versionStr = resp.data!.versionString;
      l.info('DS Version: $versionStr');
      expect(versionStr, isNotEmpty);
    });

    test('Test List Tasks', () async {
      final resp = await dsApi.task.list();
      final tasks = resp.data!.tasks;
      tasks.forEach((task) {
        l.info('Task: ${task.title}');
      });
      expect(tasks, isNotNull);
    });

    test('Test List RSS Sites', () async {
      final resp = await dsApi.rss.site.list();
      expect(resp, isNotNull);
      expect(resp.success, isTrue);
      resp.data!.sites.forEach((site) {
        l.info('${site.title} - ${site.url}');
      });
    });

    test('Test List RSS Feeds', () async {
      final resp = await dsApi.rss.feed.list('0');
      expect(resp, isNotNull);
    });
  });

  group('Test File Station API', () {
    test('Test All Shared Folder List', () async {
      final resp = await fsApi.list.listSharedFolder();
      expect(resp.success, true);
      expect(resp.data!.shares, isNotEmpty);
    });
    test('Test Folder File List', () async {
      final resp = await fsApi.list.listFolderFile("/home");
      expect(resp.success, true);
    });
    test('Test Folder File List with name except path', () async {
      final resp = await fsApi.list.listFolderFile("home");
      expect(resp.success, false);
    });
  });


  group('Test Note Station API', () {
    test('Test Get Note Station Settings', () async {
      final resp = await nsApi.setting.getSettingsInfo();
      expect(resp.success, true);
    });
    test('Test Get Note Station Info', () async {
      final resp = await nsApi.info.getInfo();
      expect(resp.success, true);
    });
    test('Test Get Note Station Note list', () async {
      final resp = await nsApi.note.getNoteList();
      expect(resp.success, true);
    });
    test('Test Get Note Station Notebook list', () async {
      final resp = await nsApi.notebook.getNotebookList();
      expect(resp.success, true);
    });
    test('Test Get Note Station Shortcut list', () async {
      final resp = await nsApi.shortcut.getShortcutListRaw();
      print(resp.data);
      expect(resp.data, isNotEmpty);
      // expect(resp.data!.shares, isNotEmpty);
    });
    test('Test Get Note Station Smart list', () async {
      final resp = await nsApi.smart.getSmartListRaw();
      print(resp.data);
      expect(resp.data, isNotEmpty);
      // expect(resp.data!.shares, isNotEmpty);
    });
    test('Test Get Note Station Tag list', () async {
      final resp = await nsApi.tag.getTagListRaw();
      print(resp.data);
      expect(resp.data, isNotEmpty);
      // expect(resp.data!.shares, isNotEmpty);
    });
    test('Test Get Note Station Todo list', () async {
      final resp = await nsApi.todo.getTodoListRaw();
      print(resp.data);
      expect(resp.data, isNotEmpty);
      // expect(resp.data!.shares, isNotEmpty);
    });
  });
}
