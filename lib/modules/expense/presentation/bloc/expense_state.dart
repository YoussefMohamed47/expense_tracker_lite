import 'package:expense_tracker_lite/core/data/models/expense_model.dart';
import 'package:expense_tracker_lite/modules/expense/data/models/add_expense_model.dart';
import 'package:expense_tracker_lite/modules/expense/data/response/exchange_rate_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'expense_state.freezed.dart';

@freezed
class ExpenseState with _$ExpenseState {
  const factory ExpenseState({
    @Default(false) bool isLoadingExchangeRate,
    @Default(false) bool isLoadingSubmitExpense,
    ExchangeRateResponse? exchangeRateResponse,
    String? errorMessage,
    @Default(AddExpenseModel()) AddExpenseModel? addExpenseModel,
  }) = _ExpenseState;
}
