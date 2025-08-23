// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_expense_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddExpenseModelImpl _$$AddExpenseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AddExpenseModelImpl(
      categoryId: (json['categoryId'] as num?)?.toInt(),
      amount: (json['amount'] as num?)?.toDouble(),
      receipt: json['receipt'] as String?,
      currency: json['currency'] as String?,
      rate: (json['rate'] as num?)?.toDouble(),
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$$AddExpenseModelImplToJson(
        _$AddExpenseModelImpl instance) =>
    <String, dynamic>{
      'categoryId': instance.categoryId,
      'amount': instance.amount,
      'receipt': instance.receipt,
      'currency': instance.currency,
      'rate': instance.rate,
      'date': instance.date?.toIso8601String(),
    };
