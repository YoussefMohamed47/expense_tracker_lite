import 'dart:developer';

import 'package:expense_tracker_lite/core/services/service_locator.dart';
import 'package:expense_tracker_lite/modules/bottom%20bar/presentation/bloc/bottom_bar_bloc.dart';
import 'package:expense_tracker_lite/modules/bottom%20bar/presentation/screens/bottom_bar_screen.dart';
import 'package:expense_tracker_lite/modules/expense/presentation/bloc/expense_bloc.dart';
import 'package:expense_tracker_lite/modules/expense/presentation/bloc/expense_event.dart';
import 'package:expense_tracker_lite/modules/expense/presentation/screens/add_expense_screen.dart';
import 'package:expense_tracker_lite/utils/helpers/enums.dart';
import 'package:expense_tracker_lite/utils/resources/base_page_route.dart';
import 'package:expense_tracker_lite/utils/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.bottomBar:
      case '/':
        return BasePageRoute(
          builder: (_) => BlocProvider(
            create: (context) => BottomBarBloc(),
            child: BottomBarScreen(),
          ),
        );
      case Routes.addExpense:
        log("AddExpense");
        return BasePageRoute(
          transitionType: TransitionType.slideFromRight,
          builder: (_) => BlocProvider.value(
            value: instance<ExpenseBloc>()
              ..add(const ExpenseEvent.clearExpenseRequestModel())
              ..add(const ExpenseEvent.getExchangeRate(baseCurrency: "USD")),
            child: AddExpenseScreen(),
          ),
        );
      default:
        return BasePageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
