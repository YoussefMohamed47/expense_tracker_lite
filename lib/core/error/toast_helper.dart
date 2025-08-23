import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

enum ToastType { success, error }

class ToastHelper {
  static void showToast({
    required String message,
    required ToastType type,
    Toast toastLength = Toast.LENGTH_SHORT,
  }) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: type == ToastType.success ? Colors.green : Colors.red,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }
}
