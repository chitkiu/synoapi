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
  var dsAuthOk;
  var fsAuthOk;
  var cntx = api.APIContext(SYNO_HOST, port: SYNO_PORT);
  var queryApi = api.QueryAPI(cntx);
  var dsApi = api.DownloadStationAPI(cntx);
  var fsApi = api.FileStationAPI(cntx);
  setUp(() async {
    dsAuthOk = await cntx.authApp(
        api.Syno.DownloadStation.name,
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
    fsAuthOk = await cntx.authApp(
        api.Syno.FileStation.name,
        SYNO_USER,
        SYNO_USER_PASS,
        otpCallback: () async {
          String? otpCode;
          while (otpCode == null || otpCode.trim().isEmpty) {
            print('OTP Code? >');
            otpCode = stdin.readLineSync();
          }
          return otpCode;
        }
    );
  });

  test('Download Station Auth OK?', () {
    expect(dsAuthOk, equals(true));
  });

  test('File Station Auth OK?', () {
    expect(fsAuthOk, equals(true));
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
}
