import 'package:easy_localization/easy_localization.dart';
import 'package:expense_tracker_lite/utils/helpers/app_shared.dart';
import 'package:expense_tracker_lite/utils/helpers/hex_color.dart';
import 'package:expense_tracker_lite/utils/resources/langauge_manager.dart';
import 'package:expense_tracker_lite/utils/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExpenseTrackerLiteApp extends StatelessWidget {
  final AppRouter appRouter;

  const ExpenseTrackerLiteApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return EasyLocalization(
      supportedLocales: const [ARABIC_LOCAL, ENGLISH_LOCAL],
      path: ASSET_PATH_LOCALISATIONS,
      saveLocale: true,
      startLocale: ENGLISH_LOCAL,
      child: Phoenix(
        child: LayoutBuilder(
          // نستخدم LayoutBuilder عشان ناخد المقاسات
          builder: (context, constraints) {
            bool isTablet = constraints.maxWidth > 600;

            return ScreenUtilInit(
              designSize: isTablet
                  ? const Size(1024, 600) // Tablet design size
                  : const Size(375, 812), // Mobile design size
              minTextAdapt: true,
              splitScreenMode: true,
              builder: (context, child) {
                return MaterialApp(
                  theme: ThemeData(
                    scaffoldBackgroundColor: HexColor('#F9F6F1'),
                  ),
                  localizationsDelegates: [
                    EasyLocalization.of(context)!.delegate,
                    GlobalMaterialLocalizations.delegate,
                    GlobalWidgetsLocalizations.delegate,
                    GlobalCupertinoLocalizations.delegate,
                  ],
                  supportedLocales:
                      EasyLocalization.of(context)!.supportedLocales,
                  locale: EasyLocalization.of(context)!.locale,
                  debugShowCheckedModeBanner: false,
                  title: 'X360 Planner',
                  home: child,
                  builder: (context, widget) {
                    return MediaQuery(
                      data: MediaQuery.of(context).copyWith(
                        textScaler: const TextScaler.linear(1.0),
                      ),
                      child: widget!,
                    );
                  },
                  navigatorKey: AppShared.navKey,
                  onGenerateRoute: appRouter.generateRoute,
                );
              },
            );
          },
        ),
      ),
    );
  }
}
