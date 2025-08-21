import 'dart:developer';

import 'package:expense_tracker_lite/utils/resources/app_colors.dart';
import 'package:flutter/material.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    log("Wallet Called");
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Center(
          child: Text("Wallet"),
        ),
      ),
    );
  }
}
