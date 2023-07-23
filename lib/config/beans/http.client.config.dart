import 'dart:convert';
import 'dart:io';

import 'package:buytout/shared/index.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

abstract interface class _CustomHttpClient {
  abstract int receiveTimeout;
  abstract int connectTimeout;
  abstract int sendTimeout;

  Future<Map<String, Object?>> get<T>(
    final String path, {
    final Map<String, dynamic>? params,
    final Options? options,
    final CancelToken? cancelToken,
    final ProgressCallback? onReceiveProgress,
  });
}

final _logger = PrettyDioLogger(
  requestHeader: true,
  requestBody: true,
  responseBody: true,
  responseHeader: false,
  error: true,
  compact: true,
  maxWidth: 90,
);

class DioHttpClient implements _CustomHttpClient {
  DioHttpClient({required final String baseURL}) {
    _dio.options = BaseOptions(
      baseUrl: baseURL,
      connectTimeout: connectTimeout.milliseconds,
      receiveTimeout: receiveTimeout.milliseconds,
      sendTimeout: sendTimeout.milliseconds,
      responseType: ResponseType.plain,
    );
  }

  final Dio _dio = Dio()..interceptors.add(_logger);

  @override
  int connectTimeout = 15000;
  @override
  int receiveTimeout = 15000;
  @override
  int sendTimeout = 15000;

  @override
  Future<Map<String, Object?>> get<T>(
    String path, {
    final Map<String, dynamic>? params,
    final Options? options,
    final CancelToken? cancelToken,
    final ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response response = await _dio.get(
        path,
        queryParameters: params,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );

      if (response.statusCode != HttpStatus.ok &&
          response.statusCode != HttpStatus.created &&
          response.statusCode != HttpStatus.found) {
        throw 'something went wrong. please try again';
      }

      return jsonDecode(response.data);
    } on Exception {
      rethrow;
    }
  }
}

// ///Post Method
// Future<Map<String, dynamic>> post(
//     String path, {
//       data,
//       Map<String, dynamic>? queryParameters,
//       Options? options,
//       CancelToken? cancelToken,
//       ProgressCallback? onSendProgress,
//       ProgressCallback? onReceiveProgress
//     }) async{
//   try{
//     final Response response = await _dio.post(
//       path,
//       data: data,
//       queryParameters: queryParameters,
//       options: options,
//       cancelToken: cancelToken,
//       onSendProgress: onSendProgress,
//       onReceiveProgress: onReceiveProgress,
//     );
//     if(response.statusCode == 200 || response.statusCode == 201){
//       return response.data;
//     }
//     throw "something went wrong";
//   } catch (e){
//     rethrow;
//   }
// }
//
// ///Put Method
// Future<Map<String, dynamic>> put(
//     String path, {
//       data,
//       Map<String, dynamic>? queryParameters,
//       Options? options,
//       CancelToken? cancelToken,
//       ProgressCallback? onSendProgress,
//       ProgressCallback? onReceiveProgress
//     }) async{
//   try{
//     final Response response = await _dio.put(
//       path,
//       data: data,
//       queryParameters: queryParameters,
//       options: options,
//       cancelToken: cancelToken,
//       onSendProgress: onSendProgress,
//       onReceiveProgress: onReceiveProgress,
//     );
//     if(response.statusCode == 200){
//       return response.data;
//     }
//     throw "something went wrong";
//   } catch (e){
//     rethrow;
//   }
// }
//
// ///Delete Method
// Future<dynamic> delete(
//     String path, {
//       data,
//       Map<String, dynamic>? queryParameters,
//       Options? options,
//       CancelToken? cancelToken,
//       ProgressCallback? onSendProgress,
//       ProgressCallback? onReceiveProgress
//     }) async{
//   try{
//     final Response response = await _dio.delete(
//       path,
//       data: data,
//       queryParameters: queryParameters,
//       options: options,
//       cancelToken: cancelToken,
//
//     );
//     if(response.statusCode == 204){
//       return response.data;
//     }
//     throw "something went wrong";
//   } catch (e){
//     rethrow;
//   }
// }
