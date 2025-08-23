import 'package:freezed_annotation/freezed_annotation.dart';

part 'exchange_rate_response.freezed.dart';
part 'exchange_rate_response.g.dart';

@freezed
class ExchangeRateResponse with _$ExchangeRateResponse {
  const factory ExchangeRateResponse({
    required String result,
    required String documentation,
    @JsonKey(name: 'terms_of_use') required String termsOfUse,
    @JsonKey(name: 'time_last_update_unix') required int timeLastUpdateUnix,
    @JsonKey(name: 'time_last_update_utc') required String timeLastUpdateUtc,
    @JsonKey(name: 'time_next_update_unix') required int timeNextUpdateUnix,
    @JsonKey(name: 'time_next_update_utc') required String timeNextUpdateUtc,
    @JsonKey(name: 'base_code') required String baseCode,
    @JsonKey(name: 'conversion_rates')
    required Map<String, num> conversionRates,
  }) = _ExchangeRateResponse;

  factory ExchangeRateResponse.fromJson(Map<String, dynamic> json) =>
      _$ExchangeRateResponseFromJson(json);
}
