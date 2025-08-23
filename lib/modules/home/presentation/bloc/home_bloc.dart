import 'package:expense_tracker_lite/modules/home/presentation/bloc/home_event.dart';
import 'package:expense_tracker_lite/modules/home/presentation/domain/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeRepo _repo;

  HomeBloc(this._repo) : super(const HomeState()) {
    on<ExpandTotalBalanceCard>((event, emit) {
      emit(state.copyWith(
        isTotalBalanceCardExpanded: !state.isTotalBalanceCardExpanded,
      ));
    });
    on<GetExpenses>((event, emit) async {
      await _getExpenses(emit);
    });
    on<ChangeFilterType>((event, emit) async {
      emit(state.copyWith(filterType: event.filterType));
      add(GetExpenses());
    });
    on<LoadNextPage>((event, emit) async {
      if (state.filterType != "This Month") return;

      final currentLength = state.visibleExpenses.length;
      final nextItems = state.allExpenses
          .skip(state.visibleExpenses.length)
          .take(state.pageSize)
          .where((e) => !state.visibleExpenses.contains(e))
          .toList();

      if (nextItems.isEmpty) return;

      emit(state.copyWith(isLoadingNextPage: true));
      await Future.delayed(const Duration(milliseconds: 500));
      emit(state.copyWith(
        visibleExpenses: [...state.visibleExpenses, ...nextItems],
        isLoadingNextPage: false,
      ));
    });
  }

  Future<void> _getExpenses(Emitter<HomeState> emit) async {
    emit(state.copyWith(isLoadingGetExpenses: true, errorMessage: ""));
    await Future.delayed(const Duration(seconds: 3));
    final result = await _repo.getExpenses();

    result.fold(
      (failure) {
        emit(state.copyWith(
          isLoadingGetExpenses: false,
          errorMessage: failure.message,
        ));
      },
      (expenses) {
        final double totalExpense = expenses.fold(
          0,
          (prev, element) => prev + double.parse(element.amount),
        );

        if (state.filterType == "This Month") {
          // أول صفحة فقط
          emit(state.copyWith(
            isLoadingGetExpenses: false,
            allExpenses: expenses,
            visibleExpenses: expenses.take(state.pageSize).toList(),
            totalExpense: totalExpense,
            totalIncome: 1000000,
            totalBalance: 1000000 - totalExpense,
          ));
        } else {
          // كل الداتا دفعة واحدة
          emit(state.copyWith(
            isLoadingGetExpenses: false,
            allExpenses: expenses,
            visibleExpenses: expenses,
            totalExpense: totalExpense,
            totalIncome: 1000000,
            totalBalance: 1000000 - totalExpense,
          ));
        }
      },
    );
  }
}
