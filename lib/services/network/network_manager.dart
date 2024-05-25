// ignore_for_file: inference_failure_on_function_invocation, avoid_dynamic_calls,argument_type_not_assignable

import 'package:alisatiyor/models/jwt_response/jwt_response.dart';
import 'package:alisatiyor/services/local/hive_service.dart';

import 'package:cookie_jar/cookie_jar.dart';
import 'package:curl_logger_dio_interceptor/curl_logger_dio_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:flutter/foundation.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:path_provider/path_provider.dart';

// const String baseUrl = 'http://10.0.2.2:8000/';
const String baseUrl = 'https://byasis.com/';
final BaseOptions baseOptions = BaseOptions(
  baseUrl: baseUrl,
  connectTimeout: const Duration(seconds: 60),
  receiveTimeout: const Duration(seconds: 60),
);

class NetworkManager {
  NetworkManager._();
  final HiveService _hiveService = HiveService.instance;
  Dio dio = Dio(baseOptions);
  PersistCookieJar? cookieJar;

  static NetworkManager instance = NetworkManager._();

  Future<void> initBaseService() async {
    await _initCookieJar();
    _initHeaders();
  }

  Future<void> _initCookieJar() async {
    if (cookieJar != null) {
      return;
    } else {
      final appDocDir = await getApplicationDocumentsDirectory();
      final appDocPath = appDocDir.path;

      cookieJar = PersistCookieJar(
        ignoreExpires: true,
        storage: FileStorage('$appDocPath/.cookies/'),
      );
      dio.interceptors.add(CookieManager(cookieJar!));
      dio.interceptors.add(InterceptorsWrapper(
        onRequest: (options, handler) async {
          final cookies = await cookieJar!.loadForRequest(options.uri);
          final csrfToken = cookies
              .firstWhere((cookie) => cookie.name == 'csrftoken',
                  orElse: () => Cookie('', ''))
              .value;
          if (csrfToken.isNotEmpty) {
            options.headers['X-CSRFToken'] = csrfToken;
          }
          return handler.next(options); // continue with the request
        },
      ));
    }
  }

  static const List<String> jwtAuthenticatedPaths = [
    'api/user/login/',
  ];

  void _initHeaders() {
    //jwt token interceptor
    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) async {
        if (jwtAuthenticatedPaths.contains(options.path)) {
          final accessToken = await _hiveService.getDataFromBox(
              BoxNames.jwt.name, BoxKeys.accessToken.name);
          final refreshToken = await _hiveService.getDataFromBox(
              BoxNames.jwt.name, BoxKeys.refreshToken.name);
          if (accessToken != null && refreshToken != null) {
            if (JwtDecoder.isExpired(accessToken)) {
              await refreshJwtToken(refreshToken);
              final accessTokenUpdated = await _hiveService.getDataFromBox(
                  BoxNames.jwt.name, BoxKeys.accessToken.name);
              options.headers['Authorization'] =
                  'Bearer $accessTokenUpdated'; // update the header of the current request
            } else {
              options.headers['Authorization'] = 'Bearer $accessToken';
            }
          }
          return handler.next(options);
        } else {
          return handler.next(options);
        }
        // continue with the request
      },
    ));

    dio.interceptors.add(CurlLoggerDioInterceptor());
    dio.options.headers['Referer'] = baseUrl;
    dio.options.headers['X-Platform'] = 'mobile';
    dio.options.headers['Content-Type'] = 'application/json';
  }

  Future<void> refreshJwtToken(String refreshToken) async {
    try {
      final refreshTokenDio = Dio(baseOptions);
      final response = await refreshTokenDio
          .post('/api/token/refresh/', data: {'refresh': refreshToken});
      final refreshResponse = JWTResponse.fromJson(response.data);

      await _hiveService.writeDataToBox(
          BoxNames.jwt.name, BoxKeys.accessToken.name, refreshResponse.access);
      await _hiveService.writeDataToBox(BoxNames.jwt.name,
          BoxKeys.refreshToken.name, refreshResponse.refresh);
    } catch (e) {
      debugPrint('refresh token error: $e');
    }
  }
}
