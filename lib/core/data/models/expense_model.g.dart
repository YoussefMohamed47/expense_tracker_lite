// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expense_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExpenseModelImpl _$$ExpenseModelImplFromJson(Map<String, dynamic> json) =>
    _$ExpenseModelImpl(
      id: (json['id'] as num).toInt(),
      category: json['category'] as String,
      source: json['source'] as String,
      amount: (json['amount'] as num).toDouble(),
      receipt: json['receipt'] as String?,
      convertedAmount: (json['convertedAmount'] as num?)?.toDouble(),
      currency: json['currency'] as String?,
      date: DateTime.parse(json['date'] as String),
      icon: json['icon'] as String,
      backgroundColor: const ColorStringConverter()
          .fromJson(json['backgroundColor'] as String),
      iconColor:
          const ColorStringConverter().fromJson(json['iconColor'] as String),
    );

Map<String, dynamic> _$$ExpenseModelImplToJson(_$ExpenseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'category': instance.category,
      'source': instance.source,
      'amount': instance.amount,
      'receipt': instance.receipt,
      'convertedAmount': instance.convertedAmount,
      'currency': instance.currency,
      'date': instance.date.toIso8601String(),
      'icon': instance.icon,
      'backgroundColor':
          const ColorStringConverter().toJson(instance.backgroundColor),
      'iconColor': const ColorStringConverter().toJson(instance.iconColor),
    };
