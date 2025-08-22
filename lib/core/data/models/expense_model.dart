import 'package:flutter/material.dart';

class ExpenseModel {
  final int id;
  final String category;
  final String source;
  final String amount;
  final DateTime date;
  final String icon;
  final Color iconColor;
  final Color backgroundColor;

  const ExpenseModel({
    required this.id,
    required this.category,
    required this.source,
    required this.amount,
    required this.date,
    required this.icon,
    required this.iconColor,
    required this.backgroundColor,
  });
}
