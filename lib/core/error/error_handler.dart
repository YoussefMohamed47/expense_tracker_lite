import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:expense_tracker_lite/core/error/failure.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import '../../utils/resources/strings_manager.dart';

class ErrorHandler implements Exception {
  late Failure failure;

  ErrorHandler._(this.failure);

  static Future<ErrorHandler> handle(dynamic error) async {
    log("Error caught: $error");
    if (error is DioException) {
      final failure = await _handleError(error);
      return ErrorHandler._(failure);
    } else {
      print("Non-Dio error caught: $error");

      return ErrorHandler._(DataSource.DEFAULT.getFailure());
    }
  }

  static Future<Failure> _handleError(DioException error) async {
    switch (error.type) {
      case DioExceptionType.connectionError ||
            DioExceptionType.connectionTimeout ||
            DioExceptionType.sendTimeout ||
            DioExceptionType.receiveTimeout ||
            DioExceptionType.unknown:
        print("Error Type: ${error.type}");
        print("Error Message: ${error.message}");
        print("Request URL: ${error.requestOptions.uri}");

        final hasConnection =
            await InternetConnectionChecker.instance.hasConnection;
        if (!hasConnection) {
          return DataSource.NO_INTERNET_CONNECTION.getFailure();
        }
        return DataSource.DEFAULT.getFailure();

      case DioExceptionType.badResponse:
        if (error.response?.data is Map<String, dynamic>) {
          final data = error.response?.data as Map<String, dynamic>;
          log("Error Data: $data");
          return Failure(
            code: error.response?.statusCode ?? 0,
            message: data["title"] ?? error.response?.statusMessage ?? "",
          );
        }
        return Failure(
          code: error.response?.statusCode ?? 0,
          message: error.response?.statusMessage ?? "",
        );

      default:
        print("Error Type: ${error.type}");
        return DataSource.DEFAULT.getFailure();
    }
  }
}

enum DataSource {
  SUCCESS,
  NO_CONTENT,
  BAD_REQUEST,
  FORBIDDEN,
  UNAUTORISED,
  NOT_FOUND,
  INTERNAL_SERVER_ERROR,
  CONNECT_TIMEOUT,
  CANCEL,
  RECIEVE_TIMEOUT,
  SEND_TIMEOUT,
  CACHE_ERROR,
  NO_INTERNET_CONNECTION,
  DEFAULT
}

extension DataSourceExtension on DataSource {
  Failure getFailure() {
    switch (this) {
      case DataSource.SUCCESS:
        return Failure(
            code: ResponseCode.SUCCESS, message: ResponseMessage.SUCCESS.tr());
      case DataSource.NO_CONTENT:
        return Failure(
            code: ResponseCode.NO_CONTENT,
            message: ResponseMessage.NO_CONTENT.tr());
      case DataSource.BAD_REQUEST:
        return Failure(
            code: ResponseCode.BAD_REQUEST,
            message: ResponseMessage.BAD_REQUEST.tr());
      case DataSource.FORBIDDEN:
        return Failure(
            code: ResponseCode.FORBIDDEN,
            message: ResponseMessage.FORBIDDEN.tr());
      case DataSource.UNAUTORISED:
        return Failure(
            code: ResponseCode.UNAUTORISED,
            message: ResponseMessage.UNAUTORISED.tr());
      case DataSource.NOT_FOUND:
        return Failure(
            code: ResponseCode.NOT_FOUND,
            message: ResponseMessage.NOT_FOUND.tr());
      case DataSource.INTERNAL_SERVER_ERROR:
        return Failure(
            code: ResponseCode.INTERNAL_SERVER_ERROR,
            message: ResponseMessage.INTERNAL_SERVER_ERROR.tr());
      case DataSource.CONNECT_TIMEOUT:
        return Failure(
            code: ResponseCode.CONNECT_TIMEOUT,
            message: ResponseMessage.CONNECT_TIMEOUT.tr());
      case DataSource.CANCEL:
        return Failure(
            code: ResponseCode.CANCEL, message: ResponseMessage.CANCEL.tr());
      case DataSource.RECIEVE_TIMEOUT:
        return Failure(
            code: ResponseCode.RECIEVE_TIMEOUT,
            message: ResponseMessage.RECIEVE_TIMEOUT.tr());
      case DataSource.SEND_TIMEOUT:
        return Failure(
            code: ResponseCode.SEND_TIMEOUT,
            message: ResponseMessage.SEND_TIMEOUT.tr());
      case DataSource.CACHE_ERROR:
        return Failure(
            code: ResponseCode.CACHE_ERROR,
            message: ResponseMessage.CACHE_ERROR.tr());
      case DataSource.NO_INTERNET_CONNECTION:
        return Failure(
            code: ResponseCode.NO_INTERNET_CONNECTION,
            message: ResponseMessage.NO_INTERNET_CONNECTION.tr());
      case DataSource.DEFAULT:
        return Failure(
            code: ResponseCode.DEFAULT, message: ResponseMessage.DEFAULT.tr());
    }
  }
}

class ResponseCode {
  static const int SUCCESS = 200; // success with data
  static const int NO_CONTENT = 201; // success with no data (no content)
  static const int BAD_REQUEST = 400; // failure, API rejected request
  static const int UNAUTORISED = 401; // failure, user is not authorised
  static const int FORBIDDEN = 403; //  failure, API rejected request
  static const int INTERNAL_SERVER_ERROR = 500; // failure, crash in server side
  static const int NOT_FOUND = 404; // failure, not found

  // local status code
  static const int CONNECT_TIMEOUT = -1;
  static const int CANCEL = -2;
  static const int RECIEVE_TIMEOUT = -3;
  static const int SEND_TIMEOUT = -4;
  static const int CACHE_ERROR = -5;
  static const int NO_INTERNET_CONNECTION = -6;
  static const int DEFAULT = -7;
}

class ResponseMessage {
  static const String SUCCESS = AppStrings.success; // success with data
  static const String NO_CONTENT =
      AppStrings.success; // success with no data (no content)
  static const String BAD_REQUEST =
      AppStrings.badRequestError; // failure, API rejected request
  static const String UNAUTORISED =
      AppStrings.unauthorizedError; // failure, user is not authorised
  static const String FORBIDDEN =
      AppStrings.forbiddenError; //  failure, API rejected request
  static const String INTERNAL_SERVER_ERROR =
      AppStrings.internalServerError; // failure, crash in server side
  static const String NOT_FOUND =
      AppStrings.notFoundError; // failure, crash in server side

  // local status code
  static const String CONNECT_TIMEOUT = AppStrings.timeoutError;
  static const String CANCEL = AppStrings.defaultError;
  static const String RECIEVE_TIMEOUT = AppStrings.timeoutError;
  static const String SEND_TIMEOUT = AppStrings.timeoutError;
  static const String CACHE_ERROR = AppStrings.cacheError;
  static const String NO_INTERNET_CONNECTION = AppStrings.noInternetError;
  static const String DEFAULT = AppStrings.defaultError;
}

class ApiInternalStatus {
  static const int SUCCESS = 0;
  static const int FAILURE = 1;
}
