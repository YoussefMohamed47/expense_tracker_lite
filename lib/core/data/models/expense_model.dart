import 'package:expense_tracker_lite/core/data/models/color_string_converter.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'expense_model.freezed.dart';
part 'expense_model.g.dart';

@freezed
class ExpenseModel with _$ExpenseModel {
  const factory ExpenseModel({
    required int id,
    required String category,
    required String source,
    required double amount,
    String? receipt,
    double? convertedAmount,
    String? currency,
    required DateTime date,
    required String icon,
    @ColorStringConverter() required Color backgroundColor,
    @ColorStringConverter() required Color iconColor,
  }) = _ExpenseModel;

  factory ExpenseModel.fromJson(Map<String, dynamic> json) =>
      _$ExpenseModelFromJson(json);
}
