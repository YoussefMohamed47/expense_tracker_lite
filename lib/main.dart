import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:expense_tracker_lite/expense_tracker_lite_app.dart';
import 'package:expense_tracker_lite/utils/helpers/app_config.dart';
import 'package:expense_tracker_lite/utils/helpers/hex_color.dart';
import 'package:expense_tracker_lite/utils/helpers/shared_pref_helper.dart';
import 'package:expense_tracker_lite/utils/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_downloader/flutter_downloader.dart';

import 'core/caching/app_response_cache_service.dart';
import 'core/network/dio_factory.dart';
import 'core/services/service_locator.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

Future<void> main({bool enableAlice = false}) async {
  WidgetsFlutterBinding.ensureInitialized();

  await SharedPrefHelper.clearSecureStorageOnReinstall();
  await EasyLocalization.ensureInitialized();
  await AppConfig.init();
  await DioFactory.init();
  await initAppModule();
  await AppResponseCacheService.initInstance();

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
    statusBarColor: HexColor('#FFFFFF'),
    statusBarBrightness: Brightness.dark,
  ));
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  HttpOverrides.global = MyHttpOverrides();

  runApp(
    ExpenseTrackerLiteApp(appRouter: AppRouter()),
  );
}
