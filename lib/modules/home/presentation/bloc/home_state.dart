import 'package:expense_tracker_lite/core/data/models/expense_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(true) bool isTotalBalanceCardExpanded,
    @Default(true) bool isLoadingNextPage,
    @Default(true) bool isLoadingGetExpenses,
    @Default("") String errorMessage,
    @Default("Last 7 Days") String filterType,
    @Default(0.0) double totalBalance,
    @Default(0.0) double totalIncome,
    @Default(0.0) double totalExpense,
    @Default([]) List<ExpenseModel> allExpenses,
    @Default([]) List<ExpenseModel> visibleExpenses,
    @Default(0) int currentPage,
    @Default(10) int pageSize,
  }) = _HomeState;
}
