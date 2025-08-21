import 'package:expense_tracker_lite/utils/resources/app_colors.dart';
import 'package:expense_tracker_lite/utils/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'font_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    // main colors
    colorScheme: ColorScheme.light(
      primary: AppColors.primaryLib, // <-- SEE HERE
      onPrimary: Colors.white, // <-- SEE HERE
      onSurface: AppColors.primaryLib, // <-- SEE HERE
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
          backgroundColor: AppColors.primaryLib,
          textStyle:
              const TextStyle(fontFamily: FontConstants.manropeFontFamily)
          // button text color
          ),
    ),
    primaryColor: AppColors.primary,
    primaryColorLight: AppColors.primaryLight,
    primaryColorDark: AppColors.primaryDark,
    disabledColor: AppColors.gray100,
    splashColor: AppColors.primaryLight,
    scaffoldBackgroundColor: AppColors.transparent,
    // ripple effect color
    // cardview theme
    cardTheme: CardTheme(
        color: AppColors.white,
        shadowColor: AppColors.gray100,
        elevation: AppSize.s4),
    // app bar theme
    appBarTheme: AppBarTheme(
        centerTitle: true,
        color: AppColors.primary,
        elevation: AppSize.s4,
        shadowColor: AppColors.primaryLight,
        titleTextStyle: TextStyle(fontSize: 16.sp, color: AppColors.white)),
    // button theme
    buttonTheme: ButtonThemeData(
        shape: const StadiumBorder(),
        disabledColor: AppColors.gray100,
        buttonColor: AppColors.primary,
        splashColor: AppColors.primaryLight),

    // elevated button them
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            textStyle: TextStyle(color: AppColors.white, fontSize: 17.sp),
            backgroundColor: AppColors.primary,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppSize.s12)))),

    textTheme: TextTheme(
        displayLarge: TextStyle(color: AppColors.gray700, fontSize: 16.sp),
        headlineLarge: TextStyle(color: AppColors.gray700, fontSize: 16.sp),
        headlineMedium: TextStyle(color: AppColors.gray700, fontSize: 14.sp),
        titleMedium: TextStyle(color: AppColors.primary, fontSize: 16.sp),
        titleSmall: TextStyle(color: AppColors.white, fontSize: 16.sp),
        bodyLarge: TextStyle(color: AppColors.gray150),
        bodySmall: TextStyle(color: AppColors.gray100),
        bodyMedium: TextStyle(color: AppColors.gray200, fontSize: 12.sp),
        labelSmall: TextStyle(color: AppColors.primary, fontSize: 12.sp)),

    // input decoration theme (text form field)
    inputDecorationTheme: InputDecorationTheme(
        // content padding
        contentPadding: const EdgeInsets.all(AppPadding.p8),
        // hint style
        hintStyle: TextStyle(color: AppColors.gray100, fontSize: 14.sp),
        labelStyle: TextStyle(color: AppColors.gray100, fontSize: 14.sp),
        errorStyle: TextStyle(color: AppColors.error),

        // enabled border style
        enabledBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: AppColors.gray100, width: AppSize.s1_5),
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),

        // focused border style
        focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: AppColors.primary, width: AppSize.s1_5),
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),

        // error border style
        errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.error, width: AppSize.s1_5),
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),
        // focused border style
        focusedErrorBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: AppColors.primary, width: AppSize.s1_5),
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)))),
    // label style
  );
}
