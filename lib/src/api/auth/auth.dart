import 'package:dio/dio.dart';

import '../../const.dart';
import '../../context.dart';

class AuthAPIRaw {
  final endpoint = '/webapi/auth.cgi';
  final APIContext _cntx;

  AuthAPIRaw(this._cntx);

  Future<Response<String>> login(String account, String passwd,
      {int version = 3, String? otpCode}) async {
    final param = {
      'account': account,
      'passwd': passwd,
      'otp_code': otpCode,
      'version': version.toString(),
      'api': Syno.API.Auth,
      'method': 'login'
    };
    param.removeWhere((key, value) => value == null);

    var uri = _cntx.buildUri(endpoint, param);
    return await _cntx.c.getUri(uri);
  }

  Future<Response<String>> logout(String session) async {
    final param = {
      'api': Syno.API.Auth,
      'version': '1',
      'method': 'logout',
      'session': session,
    };

    var uri = _cntx.buildUri(endpoint, param);
    return await _cntx.c.getUri(uri);
  }
}
