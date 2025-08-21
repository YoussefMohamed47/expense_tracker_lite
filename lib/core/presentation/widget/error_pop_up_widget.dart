import 'package:expense_tracker_lite/utils/resources/app_colors.dart';
import 'package:expense_tracker_lite/utils/resources/styles_manager.dart';
import 'package:expense_tracker_lite/core/presentation/widget/custom_button.dart';
import 'package:expense_tracker_lite/utils/helpers/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ErrorPopUpWidget extends StatelessWidget {
  final String errorMessage;
  final VoidCallback onButtonPressed;
  final String buttonText;
  final String descriptionMessage;
  final bool hasDescription;

  const ErrorPopUpWidget({
    super.key,
    required this.errorMessage,
    required this.onButtonPressed,
    this.buttonText = 'OK',
    this.descriptionMessage = '',
    this.hasDescription = false,
  });

  // Static method to show the error dialog
  static Future<void> show({
    required BuildContext context,
    required String errorMessage,
    VoidCallback? onButtonPressed,
    String descriptionMessage = '',
    bool hasDescription = false,
    String buttonText = 'OK',
  }) async {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return ErrorPopUpWidget(
          errorMessage: errorMessage,
          onButtonPressed: onButtonPressed ?? () => Navigator.of(context).pop(),
          buttonText: buttonText,
          descriptionMessage: descriptionMessage,
          hasDescription: hasDescription,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: AppColors.white,
      elevation: 0,
      alignment: Alignment.center,
      insetPadding: const EdgeInsets.all(24),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              errorMessage,
              textAlign: TextAlign.center,
              style: TextStyles.manropeFontMedium.copyWith(
                fontSize: 14.sp,
                color: AppColors.gray900,
              ),
            ),
            if (hasDescription) ...[
              verticalSpace(16),
              Text(
                descriptionMessage,
                textAlign: TextAlign.center,
                style: TextStyles.manropeFontMedium.copyWith(
                  fontSize: 16.sp,
                  color: AppColors.gray500,
                ),
              ),
            ],
            verticalSpace(24),
            CustomButton(
              width: double.infinity,
              height: 48.h,
              buttonColor: AppColors.primary,
              borderRadius: 15,
              title: buttonText,
              onpress: onButtonPressed,
            ),
          ],
        ),
      ),
    );
  }
}
