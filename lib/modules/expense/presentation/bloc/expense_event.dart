import 'dart:io';

import 'package:expense_tracker_lite/modules/expense/data/models/add_expense_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'expense_event.freezed.dart';

@freezed
class ExpenseEvent with _$ExpenseEvent {
  const factory ExpenseEvent.getExchangeRate({
    required String baseCurrency,
  }) = GetExchangeRate;

  const factory ExpenseEvent.changeCategory(int categoryId) = ChangeCategory;

  const factory ExpenseEvent.clearExpenseRequestModel() =
      ClearExpenseRequestModel;

  const factory ExpenseEvent.changeAmount(double amount) = ChangeAmount;

  const factory ExpenseEvent.changeCurrency(String currency) = ChangeCurrency;

  const factory ExpenseEvent.changeRate(double rate) = ChangeRate;

  const factory ExpenseEvent.changeDate(DateTime date) = ChangeDate;

  const factory ExpenseEvent.submitReceipt(File? receipt) = SubmitReceipt;

  const factory ExpenseEvent.submitExpense(AddExpenseModel? expense) =
      SubmitExpense;
}
