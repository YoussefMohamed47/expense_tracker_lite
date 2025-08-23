// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_expense_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddExpenseModel _$AddExpenseModelFromJson(Map<String, dynamic> json) {
  return _AddExpenseModel.fromJson(json);
}

/// @nodoc
mixin _$AddExpenseModel {
  int? get categoryId => throw _privateConstructorUsedError;
  double? get amount => throw _privateConstructorUsedError;
  String? get receipt => throw _privateConstructorUsedError;
  String? get currency => throw _privateConstructorUsedError;
  double? get rate => throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddExpenseModelCopyWith<AddExpenseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddExpenseModelCopyWith<$Res> {
  factory $AddExpenseModelCopyWith(
          AddExpenseModel value, $Res Function(AddExpenseModel) then) =
      _$AddExpenseModelCopyWithImpl<$Res, AddExpenseModel>;
  @useResult
  $Res call(
      {int? categoryId,
      double? amount,
      String? receipt,
      String? currency,
      double? rate,
      DateTime? date});
}

/// @nodoc
class _$AddExpenseModelCopyWithImpl<$Res, $Val extends AddExpenseModel>
    implements $AddExpenseModelCopyWith<$Res> {
  _$AddExpenseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = freezed,
    Object? amount = freezed,
    Object? receipt = freezed,
    Object? currency = freezed,
    Object? rate = freezed,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      receipt: freezed == receipt
          ? _value.receipt
          : receipt // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      rate: freezed == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddExpenseModelImplCopyWith<$Res>
    implements $AddExpenseModelCopyWith<$Res> {
  factory _$$AddExpenseModelImplCopyWith(_$AddExpenseModelImpl value,
          $Res Function(_$AddExpenseModelImpl) then) =
      __$$AddExpenseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? categoryId,
      double? amount,
      String? receipt,
      String? currency,
      double? rate,
      DateTime? date});
}

/// @nodoc
class __$$AddExpenseModelImplCopyWithImpl<$Res>
    extends _$AddExpenseModelCopyWithImpl<$Res, _$AddExpenseModelImpl>
    implements _$$AddExpenseModelImplCopyWith<$Res> {
  __$$AddExpenseModelImplCopyWithImpl(
      _$AddExpenseModelImpl _value, $Res Function(_$AddExpenseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = freezed,
    Object? amount = freezed,
    Object? receipt = freezed,
    Object? currency = freezed,
    Object? rate = freezed,
    Object? date = freezed,
  }) {
    return _then(_$AddExpenseModelImpl(
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      receipt: freezed == receipt
          ? _value.receipt
          : receipt // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      rate: freezed == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddExpenseModelImpl implements _AddExpenseModel {
  const _$AddExpenseModelImpl(
      {this.categoryId,
      this.amount,
      this.receipt,
      this.currency,
      this.rate,
      this.date});

  factory _$AddExpenseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddExpenseModelImplFromJson(json);

  @override
  final int? categoryId;
  @override
  final double? amount;
  @override
  final String? receipt;
  @override
  final String? currency;
  @override
  final double? rate;
  @override
  final DateTime? date;

  @override
  String toString() {
    return 'AddExpenseModel(categoryId: $categoryId, amount: $amount, receipt: $receipt, currency: $currency, rate: $rate, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddExpenseModelImpl &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.receipt, receipt) || other.receipt == receipt) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.rate, rate) || other.rate == rate) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, categoryId, amount, receipt, currency, rate, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddExpenseModelImplCopyWith<_$AddExpenseModelImpl> get copyWith =>
      __$$AddExpenseModelImplCopyWithImpl<_$AddExpenseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddExpenseModelImplToJson(
      this,
    );
  }
}

abstract class _AddExpenseModel implements AddExpenseModel {
  const factory _AddExpenseModel(
      {final int? categoryId,
      final double? amount,
      final String? receipt,
      final String? currency,
      final double? rate,
      final DateTime? date}) = _$AddExpenseModelImpl;

  factory _AddExpenseModel.fromJson(Map<String, dynamic> json) =
      _$AddExpenseModelImpl.fromJson;

  @override
  int? get categoryId;
  @override
  double? get amount;
  @override
  String? get receipt;
  @override
  String? get currency;
  @override
  double? get rate;
  @override
  DateTime? get date;
  @override
  @JsonKey(ignore: true)
  _$$AddExpenseModelImplCopyWith<_$AddExpenseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
