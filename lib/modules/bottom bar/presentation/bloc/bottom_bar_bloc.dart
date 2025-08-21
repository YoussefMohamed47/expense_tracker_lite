import 'package:flutter_bloc/flutter_bloc.dart';

import 'bottom_bar_event.dart';
import 'bottom_bar_state.dart';

class BottomBarBloc extends Bloc<BottomBarEvent, BottomBarState> {
  BottomBarBloc() : super(const BottomBarState.initial()) {
    on<IndexChanged>(_onIndexChanged);
  }

  void _onIndexChanged(
    IndexChanged event,
    Emitter<BottomBarState> emit,
  ) {
    emit(BottomBarState.updated(event.index));
  }
}
