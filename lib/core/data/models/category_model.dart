import 'package:flutter/material.dart';

class CategoryModel {
  final int id;
  final String name;
  final String icon;
  final Color backgroundColor;
  final Color iconColor;

  CategoryModel({
    required this.id,
    required this.name,
    required this.icon,
    required this.backgroundColor,
    required this.iconColor,
  });
}
