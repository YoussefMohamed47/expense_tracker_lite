import 'package:dartz/dartz.dart';
import 'package:expense_tracker_lite/core/data/models/expense_model.dart';
import 'package:expense_tracker_lite/core/error/failure.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<ExpenseModel>>> getExpenses();
}
