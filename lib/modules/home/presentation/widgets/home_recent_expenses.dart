import 'package:expense_tracker_lite/core/presentation/widget/custom_shimmer.dart';
import 'package:expense_tracker_lite/modules/home/presentation/bloc/home_bloc.dart';
import 'package:expense_tracker_lite/modules/home/presentation/bloc/home_event.dart';
import 'package:expense_tracker_lite/modules/home/presentation/bloc/home_state.dart';
import 'package:expense_tracker_lite/modules/home/presentation/widgets/expense_item.dart';
import 'package:expense_tracker_lite/utils/resources/app_colors.dart';
import 'package:expense_tracker_lite/utils/resources/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeRecentExpensesSection extends StatefulWidget {
  const HomeRecentExpensesSection({super.key});

  @override
  State<HomeRecentExpensesSection> createState() =>
      _HomeRecentExpensesSectionState();
}

class _HomeRecentExpensesSectionState extends State<HomeRecentExpensesSection> {
  ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels >=
          _scrollController.position.maxScrollExtent - 100) {
        context.read<HomeBloc>().add(LoadNextPage());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recent Expenses',
                  style: TextStyles.manropeFontBold.copyWith(
                    fontSize: 16.sp,
                    color: AppColors.black,
                  ),
                ),
                Text(
                  'see all',
                  style: TextStyles.manropeFontMedium.copyWith(
                    fontSize: 14.sp,
                    color: AppColors.black,
                  ),
                ),
              ],
            ),
            state.isLoadingGetExpenses
                ? Expanded(
                    child: CustomShimmerList(
                      type: ShimmerType.verticalList,
                      itemCount: 4,
                    ),
                  )
                : state.visibleExpenses.isEmpty
                    ? Center(
                        child: Text(
                          'No expenses found',
                          style: TextStyles.manropeFontMedium.copyWith(
                            fontSize: 14.sp,
                            color: AppColors.black,
                          ),
                        ),
                      )
                    : Expanded(
                        child: ListView.builder(
                          controller: _scrollController,
                          itemCount: state.visibleExpenses.length +
                              (state.visibleExpenses.length <
                                      state.allExpenses.length
                                  ? 1
                                  : 0),
                          itemBuilder: (context, index) {
                            if (index < state.visibleExpenses.length) {
                              final expense = state.visibleExpenses[index];
                              return RecentExpenseItem(expense: expense);
                            } else {
                              return CustomShimmerList(
                                type: ShimmerType.verticalList,
                                itemCount: 1,
                              );
                            }
                          },
                        ),
                      )
          ],
        );
      },
    );
  }
}
