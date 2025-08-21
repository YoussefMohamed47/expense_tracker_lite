import 'package:expense_tracker_lite/modules/bottom%20bar/presentation/bloc/bottom_bar_state.dart';

extension BottomBarStateX on BottomBarState {
  int get currentIndex => maybeWhen(
        initial: (index) => index,
        updated: (selectedIndex) => selectedIndex,
        orElse: () => 0,
      );
}
