import 'dart:developer';

import 'package:expense_tracker_lite/utils/resources/app_colors.dart';
import 'package:flutter/material.dart';

class StatisticsScreen extends StatelessWidget {
  const StatisticsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    log("StatisticsScreen Called");
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Center(
          child: Text("Statistics"),
        ),
      ),
    );
  }
}
