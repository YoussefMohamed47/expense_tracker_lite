import 'package:expense_tracker_lite/modules/bottom%20bar/presentation/bloc/bottom_bar_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bottom_bar_state.dart';

class BottomBarBloc extends Bloc<BottomBarEvent, BottomBarState> {
  BottomBarBloc() : super(const BottomBarState()) {
    on<IndexChanged>((event, emit) {
      emit(state.copyWith(
        currentIndex: event.index,
      ));
    });
  }
}
