import 'package:bloc/bloc.dart';
import 'package:expense_tracker_lite/modules/home/presentation/bloc/home_event.dart';

import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState()) {
    on<ExpandTotalBalanceCard>((event, emit) {
      emit(state.copyWith(
        isTotalBalanceCardExpanded: !state.isTotalBalanceCardExpanded,
      ));
    });
  }
}
