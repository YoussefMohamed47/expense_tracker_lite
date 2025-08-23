import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:expense_tracker_lite/core/data/data_source/local_data_source.dart';
import 'package:expense_tracker_lite/core/data/data_source/remote_data_source.dart';
import 'package:expense_tracker_lite/core/data/models/expense_model.dart';
import 'package:expense_tracker_lite/core/error/error_handler.dart';
import 'package:expense_tracker_lite/core/error/failure.dart';
import 'package:expense_tracker_lite/modules/expense/data/response/exchange_rate_response.dart';
import 'package:expense_tracker_lite/modules/expense/domain/repo/expense_repo.dart';

class ExpenseRepositoryRepoImpl extends ExpenseRepository {
  final RemoteDataSource _remoteDataSource;
  final LocalDataSource _localDataSource;

  ExpenseRepositoryRepoImpl(this._remoteDataSource, this._localDataSource);

  @override
  Future<Either<Failure, Unit>> submitExpense({
    required ExpenseModel expense,
  }) async {
    try {
      await _localDataSource.addExpense(expense);
      log("Expense Added $expense");
      return const Right(unit);
    } catch (error) {
      final errorHandler = await ErrorHandler.handle(error);
      return Left(errorHandler.failure);
    }
  }

  @override
  Future<Either<Failure, ExchangeRateResponse>> getExchangeRate({
    required String baseCurrency,
  }) async {
    try {
      final cachedData = await _localDataSource.getExchangeRate();
      log("Data From Cache $cachedData");
      if (cachedData != null) {
        return Right(cachedData);
      }
      final response =
          await _remoteDataSource.getExchangeRate(baseCurrency: baseCurrency);

      if (response != null) {
        await _localDataSource.cacheExchangeRate(
          response,
        );
        return Right(response);
      } else {
        return Left(Failure(
          code: ResponseCode.DEFAULT,
          message: ResponseMessage.DEFAULT,
        ));
      }
    } catch (error) {
      final errorHandler = await ErrorHandler.handle(error);
      return Left(errorHandler.failure);
    }
  }
}
