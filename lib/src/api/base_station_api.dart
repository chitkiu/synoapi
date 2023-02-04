import 'package:dio/dio.dart';

import '../context.dart';

abstract class BaseStationAPI {
  final APIContext _cntx;
  final String endpoint;

  BaseStationAPI(this._cntx, this.endpoint);

  Uri buildUri(String path, Map<String, dynamic>? queryParams) {
    return _cntx.buildUri(path, queryParams);
  }

  int maxApiVersion(String apiName, {int defaultVersion = 1}) {
    return _cntx.maxApiVersion(apiName, defaultVersion: defaultVersion);
  }

  Future<Response<T>> getUri<T>(Uri uri, {
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) {
    return _cntx.c.getUri(uri, cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
        options: options);
  }

}