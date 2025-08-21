import 'package:expense_tracker_lite/utils/helpers/hex_color.dart';
import 'package:expense_tracker_lite/utils/resources/app_colors.dart';
import 'package:expense_tracker_lite/utils/resources/assets_manager.dart';
import 'package:expense_tracker_lite/utils/resources/font_manager.dart';
import 'package:expense_tracker_lite/utils/resources/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController textEditingController;
  final TextInputType keyboardType;
  final Widget? suffixWidget;
  final Widget? prefixWidget;
  final ValueChanged<String>? onChanged;
  Function()? onTap;
  final Function(PointerDownEvent)? onTapOutside;
  final String? hint;
  TextAlign? textAlign;
  TextStyle? textFormFieldTextStyle;
  bool isEnabled;
  bool isReadOnly;
  double borderRadius;
  Color? borderColor;
  Color? unFocusedBorderColor;
  Color fillColor;
  Color? counterColor;
  int? maxLines;
  int? maxLength;
  GlobalKey<FormFieldState>? fieldKey;
  EdgeInsets? contentPadding;
  FocusNode? focusNode;
  bool? autoFocus;
  final String? Function(String?)? fieldValidator;

  bool isPassword;
  TextStyle? hintStyle;
  int? minLines;

  CustomTextField({
    Key? key,
    required this.textEditingController,
    required this.keyboardType,
    this.textFormFieldTextStyle,
    this.onChanged,
    this.onTapOutside,
    this.fieldKey,
    this.borderColor,
    this.autoFocus,
    this.focusNode,
    this.unFocusedBorderColor,
    this.hint,
    this.textAlign = TextAlign.start,
    this.isPassword = false,
    required this.fieldValidator,
    this.maxLines,
    this.hintStyle,
    this.maxLength,
    this.contentPadding,
    this.counterColor,
    this.fillColor = Colors.white,
    this.isEnabled = true,
    this.borderRadius = 20,
    this.isReadOnly = false,
    this.onTap,
    this.suffixWidget,
    this.prefixWidget,
    this.minLines,
  }) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool visible = true;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: TextFormField(
        key: widget.fieldKey,
        controller: widget.textEditingController,
        textAlign: widget.textAlign!,
        keyboardType: widget.keyboardType,
        autofocus: widget.autoFocus ?? false,
        minLines: widget.minLines ?? 1,
        onTapOutside: (event) {
          if (widget.onTapOutside != null) {
            widget.onTapOutside!(event);
          }
        },
        validator: widget.fieldValidator,
        maxLength: widget.maxLength,
        onChanged: widget.onChanged,
        onTap: widget.onTap ?? () {},
        maxLines: widget.maxLines ?? 1,
        obscureText: widget.isPassword
            ? visible
                ? true
                : false
            : false,
        readOnly: widget.isReadOnly,
        focusNode: widget.focusNode,
        style: widget.textFormFieldTextStyle,
        decoration: InputDecoration(
          enabled: widget.isEnabled,
          counterStyle: TextStyle(
            color: widget.counterColor,
            fontFamily: FontConstants.manropeFontFamily,
            fontSize: 15.sp,
          ),
          filled: true,
          isDense: true,
          fillColor: widget.fillColor,
          prefixIcon: widget.prefixWidget,
          prefixIconConstraints: const BoxConstraints(
            minWidth: 0,
            minHeight: 0,
          ),
          suffixIcon: widget.isPassword && widget.suffixWidget == null
              ? InkWell(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () {
                    setState(() {
                      visible = !visible;
                    });
                  },
                  child: widget.suffixWidget == null
                      ? Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 8.h),
                          child: !visible
                              ? Padding(
                                  padding: EdgeInsets.all(8),
                                  child: SvgPicture.asset(
                                    IconAssets.passwordEyeIcon,
                                    width: 28,
                                    height: 28,
                                  ),
                                )
                              : Padding(
                                  padding: EdgeInsets.all(8),
                                  child: SvgPicture.asset(
                                    IconAssets.passwordEyeSlashIcon,
                                    width: 28,
                                    height: 28,
                                  ),
                                ),
                        )
                      : Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 4.0, vertical: 2.h),
                              child: !visible
                                  ? const Icon(
                                      Icons.visibility_rounded,
                                      color: Colors.grey,
                                    )
                                  : SvgPicture.asset(
                                      IconAssets.passwordEyeIcon),
                            ),
                            widget.suffixWidget ?? const SizedBox()
                          ],
                        ))
              : widget.suffixWidget,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius),
            borderSide: BorderSide(
              color: widget.borderColor ?? Colors.transparent,
              width: 1,
            ), //<-- SEE HERE
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius),
            borderSide: BorderSide(
              color: HexColor('#707070'),
            ),
          ),
          errorStyle: TextStyle(
            color: Colors.red,
            fontSize: 12.sp,
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius),
            borderSide: BorderSide(
              color: Colors.red,
            ), //<-- SEE HERE
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius),
            borderSide: BorderSide(
              color: Colors.red,
            ), //<-- SEE HERE
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius),
            borderSide: BorderSide(
              color: widget.unFocusedBorderColor ?? Colors.transparent,
            ), //<-- SEE HERE
          ),
          hintText: widget.hint ?? "",
          contentPadding: widget.contentPadding ??
              const EdgeInsets.symmetric(
                horizontal: 16,
              ),
          hintStyle: widget.hintStyle ??
              TextStyles.manropeFontRegular.copyWith(
                fontSize: 14.sp,
                color: AppColors.gray500,
              ),
        ),
      ),
    );
  }
}
