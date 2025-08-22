import 'package:expense_tracker_lite/modules/home/presentation/widgets/home_balance_card.dart';
import 'package:expense_tracker_lite/modules/home/presentation/widgets/home_logo_header.dart';
import 'package:expense_tracker_lite/modules/home/presentation/widgets/home_recent_expenses.dart';
import 'package:expense_tracker_lite/modules/home/presentation/widgets/home_top_section.dart';
import 'package:expense_tracker_lite/utils/helpers/spacing.dart';
import 'package:expense_tracker_lite/utils/resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();

    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.light.copyWith(
        statusBarColor: AppColors.primary,
        statusBarIconBrightness: Brightness.light,
      ),
    );
  }

  @override
  void dispose() {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        clipBehavior: Clip.none,
        child: Stack(
          children: [
            LogoHeader(),
            SafeArea(
              top: true,
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    verticalSpace(8),
                    HomeTopSection(),
                    verticalSpace(24),
                    HomeBalanceCard(),
                    verticalSpace(24),
                    HomeRecentExpensesSection(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
