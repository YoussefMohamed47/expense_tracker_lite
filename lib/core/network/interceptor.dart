import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:expense_tracker_lite/core/caching/app_response_cache_service.dart';
import 'package:expense_tracker_lite/core/services/service_locator.dart';
import 'package:expense_tracker_lite/utils/helpers/app_shared.dart';
import 'package:expense_tracker_lite/utils/helpers/shared_pref_helper.dart';
import 'package:expense_tracker_lite/utils/helpers/shared_pref_keys.dart';
import 'package:expense_tracker_lite/utils/resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'network_info.dart';

class DioInterceptor {
  late Dio dioCall;
  final NetworkInfo _networkInfo = instance<NetworkInfo>();

  DioInterceptor(Dio dio) {
    dioCall = dio;
  }

  // تجميع النصوص الطويلة في اللوج
  void printWrapped(String text) {
    final pattern = RegExp('.{1,800}');
    for (final match in pattern.allMatches(text)) {
      log(match.group(0) ?? "");
    }
  }

  Future<bool> callRefreshTokenApi(DioException error) async {
    if (error.type == DioExceptionType.badResponse &&
        error.response?.statusCode == 401) {
      try {
        await Future.wait([
          SharedPrefHelper.clearAllData(),
          AppResponseCacheService.clearAllAppCacheResponse(),
          SharedPrefHelper.clearAllSecuredData(),
        ]);

        Phoenix.rebirth(AppShared.navKey.currentContext!);
      } catch (e) {
        log("callRefreshTokenApi error >>> $e");
        return false;
      }
    }
    return false;
  }

  dynamic errorInterceptor(
      DioError error, ErrorInterceptorHandler handler) async {
    // معالجة الـ401
    if (error.response?.statusCode == 401) {
      bool reCall = await callRefreshTokenApi(error);
      if (reCall) {
        final options = error.response!.requestOptions;
        dioCall.fetch(options).then(
          (r) => handler.resolve(r),
          onError: (e) {
            log("Error in errorInterceptor retry: $e");
            handler.reject(e);
          },
        );
        return;
      }
    }

    // محاولة استخراج رسالة من السيرفر
    try {
      final responseData = error.response?.data;
      log("Raw error response: $responseData");

      String errorMsg = "حدث خطأ غير متوقع، برجاء المحاولة لاحقًا";

      if (responseData is Map) {
        if (responseData.containsKey("ErrorDescription")) {
          errorMsg = responseData["ErrorDescription"].toString();
        } else if (responseData.containsKey("message")) {
          errorMsg = responseData["message"].toString();
        } else if (responseData.containsKey("errors")) {
          errorMsg = responseData["errors"].toString();
        } else if (responseData.containsKey("title")) {
          errorMsg = responseData["title"].toString();
        }
      } else if (responseData is String) {
        try {
          final jsonData = json.decode(responseData);
          if (jsonData is Map && jsonData.containsKey("ErrorDescription")) {
            errorMsg = jsonData["ErrorDescription"];
          } else {
            errorMsg = responseData;
          }
        } catch (_) {
          errorMsg = responseData;
        }
      }
      log("Error message extracted: $errorMsg");
      Fluttertoast.showToast(
        msg: errorMsg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: AppColors.error,
        textColor: Colors.white,
        fontSize: 16.0,
      );
    } catch (e, s) {
      log("Error decoding response: $e\n$s");
      Fluttertoast.showToast(
        msg: "حدث خطأ غير متوقع، برجاء المحاولة لاحقًا",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: AppColors.error,
        textColor: Colors.white,
        fontSize: 16.0,
      );
    }

    handler.next(error); // رجّع الـerror للـrepo
  }

  dynamic responseInterceptor(
      Response response, ResponseInterceptorHandler handler) async {
    //printWrapped("Response: $response");
    handler.next(response);
  }

  dynamic requestInterceptor(
      RequestOptions requestOptions, RequestInterceptorHandler handler) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String language = prefs.getString('lang') ?? "en";
    if (requestOptions.data is FormData) {
      final formData = requestOptions.data as FormData;
      for (var field in formData.fields) {
        print("Field: ${field.key} = ${field.value}");
      }
      for (var file in formData.files) {
        print("File field: ${file.key}");
        print("File name: ${file.value.filename}");
        print("File contentType: ${file.value.contentType}");
      }
    }

    final String? userToken =
        await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken);

    if (userToken != null && userToken.isNotEmpty) {
      requestOptions.headers[HttpHeaders.authorizationHeader] = "$userToken";
      requestOptions.headers[HttpHeaders.acceptLanguageHeader] = language;
    }

    final isConnected = await _networkInfo.isConnected;
    if (!isConnected) {
      // امنع الريكويست اصلاً
      return handler.reject(
        DioError(
          requestOptions: requestOptions,
          type: DioErrorType.unknown,
          error: "No internet connection",
        ),
      );
    }

    // في نت → كمّل
    handler.next(requestOptions);
  }
}
