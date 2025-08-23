import 'package:dartz/dartz.dart';
import 'package:expense_tracker_lite/core/data/models/expense_model.dart';
import 'package:expense_tracker_lite/core/error/failure.dart';
import 'package:expense_tracker_lite/modules/expense/data/response/exchange_rate_response.dart';

abstract class ExpenseRepository {
  Future<Either<Failure, ExchangeRateResponse>> getExchangeRate(
      {required String baseCurrency});

  Future<Either<Failure, Unit>> submitExpense({required ExpenseModel expense});
}
