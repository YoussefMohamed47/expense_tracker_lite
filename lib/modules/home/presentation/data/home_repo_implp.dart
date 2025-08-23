import 'package:dartz/dartz.dart';
import 'package:expense_tracker_lite/core/data/data_source/local_data_source.dart';
import 'package:expense_tracker_lite/core/data/models/expense_model.dart';
import 'package:expense_tracker_lite/core/error/error_handler.dart';
import 'package:expense_tracker_lite/core/error/failure.dart';
import 'package:expense_tracker_lite/modules/home/presentation/domain/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final LocalDataSource _localDataSource;

  HomeRepoImpl(this._localDataSource);

  @override
  Future<Either<Failure, List<ExpenseModel>>> getExpenses() async {
    try {
      final expenses = await _localDataSource.getExpenses();
      if (expenses != null) {
        return Right(expenses);
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
