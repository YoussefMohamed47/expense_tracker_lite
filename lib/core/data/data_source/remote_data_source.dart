import 'package:expense_tracker_lite/core/network/app_api.dart';
import 'package:expense_tracker_lite/modules/expense/data/response/exchange_rate_response.dart';

abstract class RemoteDataSource {
  Future<ExchangeRateResponse> getExchangeRate({
    required String baseCurrency,
  });
}

class RemoteDataSourceImpl implements RemoteDataSource {
  final AppServiceClient _appServiceClient;

  RemoteDataSourceImpl(this._appServiceClient);

  @override
  Future<ExchangeRateResponse> getExchangeRate({
    required String baseCurrency,
  }) async {
    return await _appServiceClient.getExchangeRate(
      baseCurrency,
    );
  }
}
