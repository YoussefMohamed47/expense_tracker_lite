import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:expense_tracker_lite/utils/resources/app_colors.dart';
import 'package:expense_tracker_lite/utils/resources/assets_manager.dart';
import 'package:expense_tracker_lite/utils/resources/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomDropdownField<T> extends StatelessWidget {
  final String hint;
  final List<DropdownMenuItem<T>> items;
  final void Function(T?) onChanged;
  final T? val;
  final double? maxHeight;
  final double? width;

  const CustomDropdownField({
    Key? key,
    required this.hint,
    required this.items,
    required this.onChanged,
    this.val,
    this.maxHeight,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField2<T>(
      value: val,
      style: TextStyles.manropeFontMedium.copyWith(
        fontSize: 14.sp,
        color: AppColors.gray950,
      ),
      hint: Text(
        hint,
        style: TextStyles.manropeFontMedium.copyWith(
          fontSize: 14.sp,
          color: AppColors.gray400,
        ),
      ),
      iconStyleData: IconStyleData(icon: SizedBox.shrink()),
      isExpanded: true,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.gray75,
        alignLabelWithHint: true,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 8.w,
          vertical: 8.h,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.r),
          borderSide: BorderSide(
            color: AppColors.gray300,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.r),
          borderSide: BorderSide(
            color: AppColors.gray300,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.r),
          borderSide: BorderSide(
            color: AppColors.gray300,
          ),
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SvgPicture.asset(
            IconAssets.arrowDownIcon,
            height: 24.h,
            width: 24.w,
            color: AppColors.gray950,
          ),
        ),
      ),
      items: items,
      onChanged: onChanged,
      dropdownStyleData: DropdownStyleData(
        maxHeight: maxHeight,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          color: AppColors.white,
        ),
      ),
    );
  }
}
