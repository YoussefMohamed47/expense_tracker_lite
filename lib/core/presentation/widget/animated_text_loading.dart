import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:expense_tracker_lite/utils/resources/app_colors.dart';
import 'package:expense_tracker_lite/utils/resources/styles_manager.dart';
import 'package:flutter/material.dart';

class AnimatedTextLoading extends StatelessWidget {
  final String? message;

  const AnimatedTextLoading({Key? key, this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DefaultTextStyle(
        style: const TextStyle(
          color: Colors.white70,
          fontSize: 16,
        ),
        child: AnimatedTextKit(
          repeatForever: true,
          animatedTexts: [
            TyperAnimatedText(
              message?.tr() ?? 'loading'.tr(),
              textStyle: TextStyles.manropeFontSemiBold.copyWith(
                fontSize: 18,
                color: AppColors.primaryDark,
              ),
            ),
            TyperAnimatedText(
              message ?? "${"loading".tr()}.",
              textStyle: TextStyles.manropeFontSemiBold.copyWith(
                fontSize: 18,
                color: AppColors.primaryDark,
              ),
            ),
            TyperAnimatedText(
              message ?? "${"loading".tr()}..",
              textStyle: TextStyles.manropeFontSemiBold.copyWith(
                fontSize: 18,
                color: AppColors.primaryDark,
              ),
            ),
            TyperAnimatedText(
              message ?? "${"loading".tr()}...",
              textStyle: TextStyles.manropeFontSemiBold.copyWith(
                fontSize: 18,
                color: AppColors.primaryDark,
              ),
            ),
          ],
          pause: Duration(milliseconds: 1500),
        ),
      ),
    );
  }
}
