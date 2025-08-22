import 'package:expense_tracker_lite/modules/bottom%20bar/presentation/bloc/bottom_bar_bloc.dart';
import 'package:expense_tracker_lite/modules/bottom%20bar/presentation/bloc/bottom_bar_event.dart';
import 'package:expense_tracker_lite/modules/bottom%20bar/presentation/bloc/bottom_bar_state.dart';
import 'package:expense_tracker_lite/modules/bottom%20bar/presentation/widgets/custom_bottom_nav_bar_item.dart';
import 'package:expense_tracker_lite/modules/profile/presentation/screens/profile_screen.dart';
import 'package:expense_tracker_lite/modules/statistics/presentation/screens/statistics_screen.dart';
import 'package:expense_tracker_lite/modules/wallet/presentation/screens/wallet_screen.dart';
import 'package:expense_tracker_lite/utils/resources/app_colors.dart';
import 'package:expense_tracker_lite/utils/resources/assets_manager.dart';
import 'package:expense_tracker_lite/utils/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../home/presentation/screens/home_screen.dart';

class BottomBarScreen extends StatefulWidget {
  final int? index;

  const BottomBarScreen({super.key, this.index});

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: widget.index ?? 0,
    );
    _pageController.addListener(_onPageChanged);
  }

  @override
  void dispose() {
    _pageController.removeListener(_onPageChanged);
    _pageController.dispose();
    super.dispose();
  }

  void _onPageChanged() {
    final currentPage = _pageController.page?.round() ?? 0;
    context.read<BottomBarBloc>().add(IndexChanged(currentPage));
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BottomBarBloc, BottomBarState>(
      listenWhen: (previous, current) =>
          previous.currentIndex != current.currentIndex,
      listener: (context, state) {
        if (state.currentIndex != 2 && _pageController.hasClients) {
          _pageController.animateToPage(
            state.currentIndex > 2
                ? state.currentIndex - 1
                : state.currentIndex,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        }
      },
      builder: (context, state) {
        var bloc = context.read<BottomBarBloc>();

        return Scaffold(
            bottomNavigationBar: Theme(
              data: ThemeData(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
              ),
              child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(
                          alpha: 0.1,
                        ),
                        blurRadius: 20,
                        offset: const Offset(0, -4),
                      ),
                    ],
                  ),
                  child: BottomNavigationBar(
                    backgroundColor: AppColors.white,
                    elevation: 0,
                    enableFeedback: false,
                    type: BottomNavigationBarType.fixed,
                    currentIndex: state.currentIndex,
                    onTap: (index) {
                      if (index == 2) {
                        Navigator.pushNamed(context, Routes.addExpense);
                        return;
                      }

                      final pageIndex = index > 2 ? index - 1 : index;
                      _pageController.jumpToPage(pageIndex);
                      bloc.add(IndexChanged(index));
                    },
                    selectedItemColor: AppColors.primary,
                    unselectedItemColor: AppColors.gray700,
                    showSelectedLabels: false,
                    showUnselectedLabels: false,
                    items: [
                      bottomNavItem(
                        icon: IconAssets.homeUnSelectedIcon,
                        selectedIcon: IconAssets.homeSelectedIcon,
                        index: 0,
                        state: state,
                      ),
                      bottomNavItem(
                        icon: IconAssets.statsIcon,
                        selectedIcon: IconAssets.statsIcon,
                        index: 1,
                        state: state,
                      ),
                      BottomNavigationBarItem(
                        icon: SvgPicture.asset(
                          IconAssets.addCircleIcon,
                          colorFilter: ColorFilter.mode(
                            AppColors.primary,
                            BlendMode.srcIn,
                          ),
                          width: 48.w,
                          height: 48.h,
                        ),
                        label: "Add",
                      ),
                      bottomNavItem(
                        icon: IconAssets.walletIcon,
                        selectedIcon: IconAssets.walletIcon,
                        index: 3,
                        state: state,
                      ),
                      bottomNavItem(
                        icon: IconAssets.profileIcon,
                        selectedIcon: IconAssets.profileIcon,
                        index: 4,
                        state: state,
                      ),
                    ],
                  )),
            ),
            body: PageView(
              controller: _pageController,
              physics: const NeverScrollableScrollPhysics(),
              children: pages,
            ));
      },
    );
  }

  List<Widget> get pages => [
        HomeScreen(),
        StatisticsScreen(),
        WalletScreen(),
        ProfileScreen(),
      ];
}
