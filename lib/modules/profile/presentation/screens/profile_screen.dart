import 'dart:developer';

import 'package:expense_tracker_lite/utils/resources/app_colors.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    log("Profile Called");
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Center(
          child: Text("Profile"),
        ),
      ),
    );
  }
}
