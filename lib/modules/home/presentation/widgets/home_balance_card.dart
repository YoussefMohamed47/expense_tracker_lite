import 'package:expense_tracker_lite/modules/home/presentation/bloc/home_bloc.dart';
import 'package:expense_tracker_lite/modules/home/presentation/bloc/home_event.dart';
import 'package:expense_tracker_lite/modules/home/presentation/bloc/home_state.dart';
import 'package:expense_tracker_lite/modules/home/presentation/widgets/balance_type_widget.dart';
import 'package:expense_tracker_lite/utils/helpers/enums.dart';
import 'package:expense_tracker_lite/utils/helpers/spacing.dart';
import 'package:expense_tracker_lite/utils/resources/app_colors.dart';
import 'package:expense_tracker_lite/utils/resources/assets_manager.dart';
import 'package:expense_tracker_lite/utils/resources/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeBalanceCard extends StatelessWidget {
  const HomeBalanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      clipBehavior: Clip.none,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: AppColors.primaryWithOpacity,
        borderRadius: BorderRadius.circular(25),
      ),
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.bottomRight,
            children: [
              SvgPicture.asset(
                IconAssets.circlesIcon,
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  AppColors.white,
                  BlendMode.srcIn,
                ),
                height: state.isTotalBalanceCardExpanded ? 120.h : 20.h,
              ),
              Padding(
                padding:
                    EdgeInsets.all(state.isTotalBalanceCardExpanded ? 16 : 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          spacing: 8.w,
                          children: [
                            Text(
                              'Total Balance',
                              style: TextStyles.manropeFontBold.copyWith(
                                fontSize: 16.sp,
                                color: AppColors.white,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                context.read<HomeBloc>().add(
                                    HomeEvent.expandTotalBalanceCard(
                                        !state.isTotalBalanceCardExpanded));
                              },
                              child: RotatedBox(
                                quarterTurns:
                                    state.isTotalBalanceCardExpanded ? 2 : 4,
                                child: SvgPicture.asset(
                                  IconAssets.arrowDownIcon,
                                  color: AppColors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.more_horiz,
                          color: AppColors.white,
                        ),
                      ],
                    ),
                    verticalSpace(8),
                    Text(
                      "\$ 1,250.00",
                      style: TextStyles.manropeFontBold.copyWith(
                        fontSize: 36.sp,
                        color: AppColors.white,
                      ),
                    ),
                    if (state.isTotalBalanceCardExpanded) ...[
                      verticalSpace(24),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          BalanceTypeWidget(
                            balanceType: BalanceType.income,
                          ),
                          BalanceTypeWidget(
                            balanceType: BalanceType.expense,
                          )
                        ],
                      )
                    ]
                  ],
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
