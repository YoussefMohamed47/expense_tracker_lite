import 'package:expense_tracker_lite/modules/expense/presentation/screens/add_expense_screen.dart';
import 'package:expense_tracker_lite/modules/home/presentation/bloc/home_bloc.dart';
import 'package:expense_tracker_lite/modules/home/presentation/widgets/home_balance_card.dart';
import 'package:expense_tracker_lite/modules/home/presentation/widgets/home_logo_header.dart';
import 'package:expense_tracker_lite/modules/home/presentation/widgets/home_recent_expenses.dart';
import 'package:expense_tracker_lite/modules/home/presentation/widgets/home_top_section.dart';
import 'package:expense_tracker_lite/utils/helpers/enums.dart';
import 'package:expense_tracker_lite/utils/helpers/extensions.dart';
import 'package:expense_tracker_lite/utils/helpers/spacing.dart';
import 'package:expense_tracker_lite/utils/resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
      backgroundColor: AppColors.offWhite2,
      extendBodyBehindAppBar: true,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.pushWithTransition(
            AddExpenseScreen(),
            transitionType: TransitionType.slideFromRight,
          );
        },
        shape: const CircleBorder(),
        backgroundColor: AppColors.primary,
        child: const Icon(Icons.add, color: AppColors.white),
      ),
      body: Stack(
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
                  BlocProvider(
                    create: (context) => HomeBloc(),
                    child: HomeBalanceCard(),
                  ),
                  Spacer(),
                  HomeRecentExpensesSection(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
