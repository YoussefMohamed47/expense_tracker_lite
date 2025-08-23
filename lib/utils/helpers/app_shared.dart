import 'package:expense_tracker_lite/utils/resources/app_colors.dart';
import 'package:expense_tracker_lite/utils/resources/font_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppShared {
  static final navKey = GlobalKey<NavigatorState>();
  static ValueNotifier<bool> isArchived = ValueNotifier<bool>(false);
  static ValueNotifier<bool> isCompact = ValueNotifier<bool>(false);
  static ValueNotifier<String> workSpaceName = ValueNotifier<String>("");
  static ValueNotifier<bool> isDragEnabled = ValueNotifier<bool>(true);
  static ValueNotifier<int> selectedIndexNotifier = ValueNotifier<int>(0);

  // static final GlobalKey<ScaffoldState> drawerBottomBarScaffoldKey =
  //     GlobalKey<ScaffoldState>(debugLabel: "drawerBottomBarScaffoldKey");
  static bool hasToken = false;
  static String token = '';
  static String remebertoken = '';
  static String deviceId = '';

  static noSupportAlert() {
    return showDialog(
        context: AppShared.navKey.currentContext!,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Center(
              child: Text(
                'ملف غير مدعوم',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: AppColors.gray700,
                    fontFamily: FontConstants.manropeFontFamily,
                    fontWeight: FontWeight.w700,
                    fontSize: 16.sp),
              ),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  "صيغة هذا الملف غير مدعومة",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: AppColors.secondTextColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 14.sp),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Container(
                          constraints: BoxConstraints(minWidth: 48.w),
                          decoration: BoxDecoration(
                            color: AppColors.primary,
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 14.0.w, vertical: 8.h),
                            child: Text(
                              'موافق',
                              style: TextStyle(
                                color: AppColors.white,
                                fontSize: 12.sp,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ])
              ],
            ),
          );
        });
  }
}
