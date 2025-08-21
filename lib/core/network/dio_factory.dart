import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:expense_tracker_lite/utils/helpers/constants.dart';
import 'package:expense_tracker_lite/utils/helpers/shared_pref_helper.dart';
import 'package:expense_tracker_lite/utils/helpers/shared_pref_keys.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'interceptor.dart';

const String APPLICATION_JSON = "application/json";
const String CONTENT_TYPE = "content-type";
const String ACCEPT = "accept";
const String AUTHORIZATION = "Authorization";
const String DEFAULT_LANGUAGE = "language";
const String device_type = "device_type";
const String device_id = "device_id";

class DioFactory {
  static Dio? _dioInstance; // ✅ نفس الـ Dio لكل الريكويستات
  static String? _token;
  static String _language = "en";
  late final DioInterceptor dioInterceptors;

  DioFactory();

  static Future<void> init() async {
    final prefs = await SharedPreferences.getInstance();
    _language = prefs.getString('lang') ?? "en";
    _token =
        await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken) ?? '';
  }

  Future<Dio> getDio() async {
    if (_dioInstance != null) return _dioInstance!;

    Dio dio = Dio();
    dioInterceptors = DioInterceptor(dio);

    Map<String, String> headers = {
      CONTENT_TYPE: APPLICATION_JSON,
      ACCEPT: "text/plain",
      AUTHORIZATION: (_token ?? '').isEmpty ? '' : "$_token",
      DEFAULT_LANGUAGE: _language == "en" ? "ar" : "en",
    };

    dio.options = BaseOptions(
      baseUrl: Constants.baseUrl,
      headers: headers,
      connectTimeout: Duration(seconds: Constants.apiTimeOut),
      receiveTimeout: Duration(seconds: Constants.apiTimeOut),
      sendTimeout: Duration(seconds: Constants.apiTimeOut),
    );

    final interceptorsList = <Interceptor>[
      QueuedInterceptorsWrapper(
        onRequest: (options, handler) {
          log("onRequest at: ${DateTime.now()}");
          dioInterceptors.requestInterceptor(options, handler);
        },
        onResponse: (response, handler) =>
            dioInterceptors.responseInterceptor(response, handler),
        onError: (error, handler) {
          log("onError Dio Factory ${error.response}");
          dioInterceptors.errorInterceptor(error, handler);
        },
      ),
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: true,
        request: true,
        enabled: true,
        maxWidth: 90,
      ),
    ];

    dio.interceptors.addAll(interceptorsList);

    _dioInstance = dio;
    return _dioInstance!;
  }
}
