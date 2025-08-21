import 'package:dio/dio.dart' hide Headers;
import 'package:expense_tracker_lite/utils/helpers/constants.dart';
import 'package:retrofit/retrofit.dart';

part 'app_api.g.dart';

@RestApi(baseUrl: Constants.baseUrl)
abstract class AppServiceClient {
  factory AppServiceClient(Dio dio, {String baseUrl}) = _AppServiceClient;
}
