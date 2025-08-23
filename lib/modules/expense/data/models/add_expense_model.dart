import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_expense_model.freezed.dart';
part 'add_expense_model.g.dart';

@freezed
class AddExpenseModel with _$AddExpenseModel {
  const factory AddExpenseModel({
    int? categoryId,
    double? amount,
    String? receipt,
    String? currency,
    double? rate,
    DateTime? date,
  }) = _AddExpenseModel;

  factory AddExpenseModel.fromJson(Map<String, dynamic> json) =>
      _$AddExpenseModelFromJson(json);
}
