import 'package:expense_tracker_lite/core/data/models/category_model.dart';
import 'package:expense_tracker_lite/utils/helpers/spacing.dart';
import 'package:expense_tracker_lite/utils/resources/app_colors.dart';
import 'package:expense_tracker_lite/utils/resources/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryItem extends StatelessWidget {
  final CategoryModel category;
  final bool isSelected;

  const CategoryItem(
      {super.key, required this.category, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 40.h,
          width: 40.w,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: category.backgroundColor,
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset(
            category.icon,
            height: 18.h,
            width: 18.w,
            colorFilter: ColorFilter.mode(
              category.iconColor,
              BlendMode.srcIn,
            ),
          ),
        ),
        verticalSpace(8),
        Text(
          category.name,
          overflow: TextOverflow.ellipsis,
          style: TextStyles.manropeFontMedium.copyWith(
            fontSize: 12.sp,
            color: isSelected ? AppColors.primary : AppColors.black,
          ),
        ),
      ],
    );
  }
}
