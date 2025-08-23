import 'package:expense_tracker_lite/core/data/Caching/cache_manager.dart';
import 'package:expense_tracker_lite/core/data/models/expense_model.dart';
import 'package:expense_tracker_lite/modules/expense/data/response/exchange_rate_response.dart';
import 'package:expense_tracker_lite/utils/helpers/constants.dart';

abstract class LocalDataSource {
  Future<void> addExpense(ExpenseModel expense);

  List<ExpenseModel> getExpenses();

  Future<ExchangeRateResponse?> getExchangeRate();

  Future<void> cacheExchangeRate(ExchangeRateResponse exchangeRate);
}

class LocalDataSourceImpl implements LocalDataSource {
  final CacheManager cacheManager;

  LocalDataSourceImpl({required this.cacheManager});

  @override
  Future<void> addExpense(ExpenseModel expense) async {
    await cacheManager.addToCachedList<ExpenseModel>(
      key: Constants.expenseKey,
      item: expense,
      toJson: (obj) => obj.toJson(),
    );
  }

  @override
  List<ExpenseModel> getExpenses() {
    return cacheManager.getCachedList<ExpenseModel>(
      key: Constants.expenseKey,
      fromJson: (json) => ExpenseModel.fromJson(json),
    );
  }

  @override
  Future<ExchangeRateResponse?> getExchangeRate() async {
    final rawData = await cacheManager.getRawData(Constants.exchangeRateKey);

    if (rawData == null) {
      return null; // بدل ما نعمل throw exception
    }

    return ExchangeRateResponse.fromJson(rawData);
  }

  @override
  Future<void> cacheExchangeRate(ExchangeRateResponse exchangeRate) async {
    await cacheManager.saveData(
      key: Constants.exchangeRateKey,
      data: exchangeRate.toJson(),
      duration: Duration(minutes: 30),
    );
  }
}
