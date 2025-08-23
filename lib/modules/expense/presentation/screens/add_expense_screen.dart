import 'package:expense_tracker_lite/modules/expense/presentation/widgets/add_expense_form.dart';
import 'package:expense_tracker_lite/utils/resources/app_colors.dart';
import 'package:expense_tracker_lite/utils/resources/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddExpenseScreen extends StatelessWidget {
  const AddExpenseScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        title: Text(
          "Add Expense",
          style: TextStyles.manropeFontBold.copyWith(
            fontSize: 18.sp,
            color: AppColors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              AddExpenseForm(),
            ],
          ),
        ),
      ),
    );
  }
}
