import 'dart:convert';
import 'dart:math';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:logging/logging.dart';
import 'package:cookie_jar/cookie_jar.dart';

import 'api/auth.dart';
import 'api/query.dart';
import 'model.dart';

typedef AsyncStringCallback = Future<String> Function();

class LoggingInterceptor extends InterceptorsWrapper {
  final l = Logger('SynoAPI');

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    l.finest('> ${options.method} ${options.path}');
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    final data = response.data.toString();
    l.finest('< ${response.statusCode} ${data.substring(0, min(data.length, 256))}');
    handler.next(response);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    l.warning('ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions.path}');
    handler.next(err);
  }
}

class APIContext {
  final l = Logger('APIContext');
  late final String _proto;
  late final String _authority;
  late final String _endpoint;
  late final Dio _client;
  Map<String, APIInfoQuery> _apiInfo = {};

  APIContext(String host,
      {String proto = 'https', int port = 443, String endpoint = '', String? proxy, Map<String, String>? sid})
      : _proto = proto,
        _authority = '$host:$port',
        _endpoint = endpoint,
        _client = Dio()..interceptors.add(LoggingInterceptor())..interceptors.add(CookieManager(CookieJar()))
  {
    if (proxy != null) _setupProxy(proxy);
  }

  APIContext.uri(String uri, {String? proxy, Map<String, String>? sid})
      : _client = Dio()..interceptors.add(LoggingInterceptor())..interceptors.add(CookieManager(CookieJar()))
  {
    var parsedUri = Uri.parse(uri);
    _proto = parsedUri.scheme;
    _authority = parsedUri.authority;
    _endpoint = parsedUri.path;
    if (proxy != null) _setupProxy(proxy);
  }

  void _setupProxy(String proxy) {
    (_client.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate = (httpClient) {
      httpClient.findProxy = (uri) => proxy;
    };
  }

  Uri buildUri(String path, Map<String, dynamic>? queryParams) {
    if (queryParams != null) {
      queryParams.removeWhere((key, value) => value == null);
      queryParams =
          queryParams.map((key, value) => MapEntry(key, value.toString()));
    }
    if (_proto == 'http') {
      return Uri.http(_authority, _endpoint + path, queryParams);
    } else if (_proto == 'https') {
      return Uri.https(_authority, _endpoint + path, queryParams);
    } else {
      throw Exception('Unsupported proto \'$proto\'');
    }
  }

  Future<bool> authApp(String account, String passwd,
      {String? otpCode, AsyncStringCallback? otpCallback}) async {
    var resp = await AuthAPIRaw(this).login(account, passwd, otpCode: otpCode, version: 3);
    var respObj = jsonDecode(resp.data!);
    if (respObj['success']) {
      l.fine('authApp(); Authentication success, sid = ${respObj['data']['sid']}');

      try {
        var apiInfo = await QueryAPI(this).info.apiInfo();
        if (!apiInfo.success) {
          throw Exception('Failed to query api info. error: ' +
              (apiInfo.error?.entries.map((e) => '${e.key}=${e.value}').join(',') ?? ''));
        }
        _apiInfo = apiInfo.data ?? {};
      } catch (e) {
        l.warning('authApp(); Failed to retrieve API info.');
      }

      return true;
    } else {
      l.fine('authApp(); Authentication fail, code = ${respObj['error']['code']}');
      if (otpCallback != null && respObj['error']['code'] == 403) {
        // otp code required
        return authApp(account, passwd, otpCode: await otpCallback());
      }
    }
    return false;
  }

  String get endpoint => _endpoint;

  String get authority => _authority;

  String get proto => _proto;

  Dio get c => _client;

  Map<String, APIInfoQuery> get apiInfo => _apiInfo;

  int maxApiVersion(String apiName, {int defaultVersion = 1}) => _apiInfo[apiName]?.maxVersion ?? defaultVersion;

  int minApiVersion(String apiName, {int defaultVersion = 1}) => _apiInfo[apiName]?.minVersion ?? defaultVersion;
}
