import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class Validation {
  static final RegExp invalidCharacters = RegExp(r'[$%&*<>\[\]{}‘“;\/|^#-]');
  static final RegExp mobileNumberRegExp =
      RegExp('^(0|00)([1-9]{1,4})([0-9]{8,12})\$');

  static String? isEmptyValidator(
    BuildContext context,
    String? value,
    String fieldName,
  ) {
    //  value = value!.cleanupWhiteSpace();
    if (value!.isEmpty || value.trim().isEmpty) {
      return tr('Please Enter $fieldName');
    } else {
      return null;
    }
  }

  static String? minLengthValidator(
      BuildContext context, String value, int minLength) {
    if (value.length < minLength) {
      return tr(
          'Enter Min Length For the Field'); //EasyLocalization.of(context)?.pleaseEnterMinLength("$minLength") ??
    } else {
      return null;
    }
  }

 static String? passwordValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'من فضلك أدخل كلمة السر';
    }
    if (value.length < 8) {
      return 'كلمة السر يجب أن تكون على الأقل 8 حروف';
    }
    if (!RegExp(r'[A-Z]').hasMatch(value)) {
      return 'كلمة السر يجب أن تحتوي على حرف كبير واحد على الأقل';
    }
    if (!RegExp(r'[0-9]').hasMatch(value)) {
      return 'كلمة السر يجب أن تحتوي على رقم واحد على الأقل';
    }
    // Optional: تحقق من رمز خاص
    if (!RegExp(r'[!@#\$&*~]').hasMatch(value)) {
      return 'كلمة السر يجب أن تحتوي على رمز خاص مثل (! @ #)';
    }
    return null; // valid
  }
static String? passwordConfirmValidator(String? value, String originalPassword) {
  if (value == null || value.isEmpty) {
    return 'من فضلك أدخل تأكيد كلمة السر';
  }
  if (value != originalPassword) {
    return 'كلمتا السر غير متطابقتين';
  }
  return null;
}

  static String? maxLengthValidator(
      BuildContext context, String value, int maxLength) {
    if (value.length > maxLength) {
      return tr(
          'Enter Max Length'); //EasyLocalization.of(context)?.pleaseEnterMinLength("$maxLength") ??" ";
    } else {
      return null;
    }
  }

  static String? mobileValidator(BuildContext context, String value) {

    if (!mobileNumberRegExp.hasMatch(value)) {
      return tr(
          'Enter Right Phone Number'); //EasyLocalization.of(context)?.mobilePhoneWrongRegex ?? " ";
    } else {
      return null;
    }
  }

  static String? invalidCharacterValidator(BuildContext context, String value) {
    String specialCharacter = '!\$%.,&*<>[]{]‘“;/?+|^#'; //:
    String foundedSpecialCharacter = '';

    specialCharacter.split('').forEach((element) {
      if (value.contains(element)) {
        foundedSpecialCharacter += element;
      }
    });
    if (foundedSpecialCharacter.isNotEmpty) {
      return tr(
          'Character Not Valid'); //EasyLocalization.of(context)?.invalidCharacter ?? " ";
    }
    return null;
  }

  static String? dateTimeValidator(
      BuildContext context, String value, String name) {
    if (DateTime.tryParse(value) == null) {
      return tr(
          'Date Time Not Valid'); //EasyLocalization.of(context)?.dateTimeWrongRegex ?? " ";
    }
    return null;
  }

  static String? emailValidator(String value) {
    final bool emailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(value);
    if (value.isEmpty) {
      return tr('Please Enter Email');
    } else if (!emailValid) {
      return tr('Please Enter Valid Email');
    }
    return null;
  }
}
