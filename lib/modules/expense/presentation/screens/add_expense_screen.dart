import 'dart:developer';

import 'package:expense_tracker_lite/utils/resources/app_colors.dart';
import 'package:flutter/material.dart';

class AddExpenseScreen extends StatelessWidget {
  const AddExpenseScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    log("AddExpenseScreen");
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Center(
          child: Text("AddExpenseScreen"),
        ),
      ),
    );
  }
}
