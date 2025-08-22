import 'package:expense_tracker_lite/modules/bottom%20bar/helper/extention.dart';
import 'package:expense_tracker_lite/modules/bottom%20bar/presentation/bloc/bottom_bar_state.dart';
import 'package:expense_tracker_lite/utils/resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

BottomNavigationBarItem bottomNavItem({
  required String icon,
  required String selectedIcon,
  required int index,
  required BottomBarState state,
}) {
  return BottomNavigationBarItem(
    icon: SvgPicture.asset(
      state.currentIndex == index ? selectedIcon : icon,
      width: 24.w,
      height: 24.h,
      colorFilter: ColorFilter.mode(
        state.currentIndex == index ? AppColors.primary : AppColors.gray200,
        BlendMode.srcIn,
      ),
    ),
    label: "",
  );
}
