// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expense_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ExpenseEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String baseCurrency) getExchangeRate,
    required TResult Function(int categoryId) changeCategory,
    required TResult Function() clearExpenseRequestModel,
    required TResult Function(double amount) changeAmount,
    required TResult Function(String currency) changeCurrency,
    required TResult Function(double rate) changeRate,
    required TResult Function(DateTime date) changeDate,
    required TResult Function(File? receipt) submitReceipt,
    required TResult Function(AddExpenseModel? expense) submitExpense,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String baseCurrency)? getExchangeRate,
    TResult? Function(int categoryId)? changeCategory,
    TResult? Function()? clearExpenseRequestModel,
    TResult? Function(double amount)? changeAmount,
    TResult? Function(String currency)? changeCurrency,
    TResult? Function(double rate)? changeRate,
    TResult? Function(DateTime date)? changeDate,
    TResult? Function(File? receipt)? submitReceipt,
    TResult? Function(AddExpenseModel? expense)? submitExpense,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String baseCurrency)? getExchangeRate,
    TResult Function(int categoryId)? changeCategory,
    TResult Function()? clearExpenseRequestModel,
    TResult Function(double amount)? changeAmount,
    TResult Function(String currency)? changeCurrency,
    TResult Function(double rate)? changeRate,
    TResult Function(DateTime date)? changeDate,
    TResult Function(File? receipt)? submitReceipt,
    TResult Function(AddExpenseModel? expense)? submitExpense,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetExchangeRate value) getExchangeRate,
    required TResult Function(ChangeCategory value) changeCategory,
    required TResult Function(ClearExpenseRequestModel value)
        clearExpenseRequestModel,
    required TResult Function(ChangeAmount value) changeAmount,
    required TResult Function(ChangeCurrency value) changeCurrency,
    required TResult Function(ChangeRate value) changeRate,
    required TResult Function(ChangeDate value) changeDate,
    required TResult Function(SubmitReceipt value) submitReceipt,
    required TResult Function(SubmitExpense value) submitExpense,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetExchangeRate value)? getExchangeRate,
    TResult? Function(ChangeCategory value)? changeCategory,
    TResult? Function(ClearExpenseRequestModel value)? clearExpenseRequestModel,
    TResult? Function(ChangeAmount value)? changeAmount,
    TResult? Function(ChangeCurrency value)? changeCurrency,
    TResult? Function(ChangeRate value)? changeRate,
    TResult? Function(ChangeDate value)? changeDate,
    TResult? Function(SubmitReceipt value)? submitReceipt,
    TResult? Function(SubmitExpense value)? submitExpense,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetExchangeRate value)? getExchangeRate,
    TResult Function(ChangeCategory value)? changeCategory,
    TResult Function(ClearExpenseRequestModel value)? clearExpenseRequestModel,
    TResult Function(ChangeAmount value)? changeAmount,
    TResult Function(ChangeCurrency value)? changeCurrency,
    TResult Function(ChangeRate value)? changeRate,
    TResult Function(ChangeDate value)? changeDate,
    TResult Function(SubmitReceipt value)? submitReceipt,
    TResult Function(SubmitExpense value)? submitExpense,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpenseEventCopyWith<$Res> {
  factory $ExpenseEventCopyWith(
          ExpenseEvent value, $Res Function(ExpenseEvent) then) =
      _$ExpenseEventCopyWithImpl<$Res, ExpenseEvent>;
}

/// @nodoc
class _$ExpenseEventCopyWithImpl<$Res, $Val extends ExpenseEvent>
    implements $ExpenseEventCopyWith<$Res> {
  _$ExpenseEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetExchangeRateImplCopyWith<$Res> {
  factory _$$GetExchangeRateImplCopyWith(_$GetExchangeRateImpl value,
          $Res Function(_$GetExchangeRateImpl) then) =
      __$$GetExchangeRateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String baseCurrency});
}

/// @nodoc
class __$$GetExchangeRateImplCopyWithImpl<$Res>
    extends _$ExpenseEventCopyWithImpl<$Res, _$GetExchangeRateImpl>
    implements _$$GetExchangeRateImplCopyWith<$Res> {
  __$$GetExchangeRateImplCopyWithImpl(
      _$GetExchangeRateImpl _value, $Res Function(_$GetExchangeRateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseCurrency = null,
  }) {
    return _then(_$GetExchangeRateImpl(
      baseCurrency: null == baseCurrency
          ? _value.baseCurrency
          : baseCurrency // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetExchangeRateImpl implements GetExchangeRate {
  const _$GetExchangeRateImpl({required this.baseCurrency});

  @override
  final String baseCurrency;

  @override
  String toString() {
    return 'ExpenseEvent.getExchangeRate(baseCurrency: $baseCurrency)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetExchangeRateImpl &&
            (identical(other.baseCurrency, baseCurrency) ||
                other.baseCurrency == baseCurrency));
  }

  @override
  int get hashCode => Object.hash(runtimeType, baseCurrency);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetExchangeRateImplCopyWith<_$GetExchangeRateImpl> get copyWith =>
      __$$GetExchangeRateImplCopyWithImpl<_$GetExchangeRateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String baseCurrency) getExchangeRate,
    required TResult Function(int categoryId) changeCategory,
    required TResult Function() clearExpenseRequestModel,
    required TResult Function(double amount) changeAmount,
    required TResult Function(String currency) changeCurrency,
    required TResult Function(double rate) changeRate,
    required TResult Function(DateTime date) changeDate,
    required TResult Function(File? receipt) submitReceipt,
    required TResult Function(AddExpenseModel? expense) submitExpense,
  }) {
    return getExchangeRate(baseCurrency);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String baseCurrency)? getExchangeRate,
    TResult? Function(int categoryId)? changeCategory,
    TResult? Function()? clearExpenseRequestModel,
    TResult? Function(double amount)? changeAmount,
    TResult? Function(String currency)? changeCurrency,
    TResult? Function(double rate)? changeRate,
    TResult? Function(DateTime date)? changeDate,
    TResult? Function(File? receipt)? submitReceipt,
    TResult? Function(AddExpenseModel? expense)? submitExpense,
  }) {
    return getExchangeRate?.call(baseCurrency);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String baseCurrency)? getExchangeRate,
    TResult Function(int categoryId)? changeCategory,
    TResult Function()? clearExpenseRequestModel,
    TResult Function(double amount)? changeAmount,
    TResult Function(String currency)? changeCurrency,
    TResult Function(double rate)? changeRate,
    TResult Function(DateTime date)? changeDate,
    TResult Function(File? receipt)? submitReceipt,
    TResult Function(AddExpenseModel? expense)? submitExpense,
    required TResult orElse(),
  }) {
    if (getExchangeRate != null) {
      return getExchangeRate(baseCurrency);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetExchangeRate value) getExchangeRate,
    required TResult Function(ChangeCategory value) changeCategory,
    required TResult Function(ClearExpenseRequestModel value)
        clearExpenseRequestModel,
    required TResult Function(ChangeAmount value) changeAmount,
    required TResult Function(ChangeCurrency value) changeCurrency,
    required TResult Function(ChangeRate value) changeRate,
    required TResult Function(ChangeDate value) changeDate,
    required TResult Function(SubmitReceipt value) submitReceipt,
    required TResult Function(SubmitExpense value) submitExpense,
  }) {
    return getExchangeRate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetExchangeRate value)? getExchangeRate,
    TResult? Function(ChangeCategory value)? changeCategory,
    TResult? Function(ClearExpenseRequestModel value)? clearExpenseRequestModel,
    TResult? Function(ChangeAmount value)? changeAmount,
    TResult? Function(ChangeCurrency value)? changeCurrency,
    TResult? Function(ChangeRate value)? changeRate,
    TResult? Function(ChangeDate value)? changeDate,
    TResult? Function(SubmitReceipt value)? submitReceipt,
    TResult? Function(SubmitExpense value)? submitExpense,
  }) {
    return getExchangeRate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetExchangeRate value)? getExchangeRate,
    TResult Function(ChangeCategory value)? changeCategory,
    TResult Function(ClearExpenseRequestModel value)? clearExpenseRequestModel,
    TResult Function(ChangeAmount value)? changeAmount,
    TResult Function(ChangeCurrency value)? changeCurrency,
    TResult Function(ChangeRate value)? changeRate,
    TResult Function(ChangeDate value)? changeDate,
    TResult Function(SubmitReceipt value)? submitReceipt,
    TResult Function(SubmitExpense value)? submitExpense,
    required TResult orElse(),
  }) {
    if (getExchangeRate != null) {
      return getExchangeRate(this);
    }
    return orElse();
  }
}

abstract class GetExchangeRate implements ExpenseEvent {
  const factory GetExchangeRate({required final String baseCurrency}) =
      _$GetExchangeRateImpl;

  String get baseCurrency;
  @JsonKey(ignore: true)
  _$$GetExchangeRateImplCopyWith<_$GetExchangeRateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeCategoryImplCopyWith<$Res> {
  factory _$$ChangeCategoryImplCopyWith(_$ChangeCategoryImpl value,
          $Res Function(_$ChangeCategoryImpl) then) =
      __$$ChangeCategoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int categoryId});
}

/// @nodoc
class __$$ChangeCategoryImplCopyWithImpl<$Res>
    extends _$ExpenseEventCopyWithImpl<$Res, _$ChangeCategoryImpl>
    implements _$$ChangeCategoryImplCopyWith<$Res> {
  __$$ChangeCategoryImplCopyWithImpl(
      _$ChangeCategoryImpl _value, $Res Function(_$ChangeCategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
  }) {
    return _then(_$ChangeCategoryImpl(
      null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangeCategoryImpl implements ChangeCategory {
  const _$ChangeCategoryImpl(this.categoryId);

  @override
  final int categoryId;

  @override
  String toString() {
    return 'ExpenseEvent.changeCategory(categoryId: $categoryId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeCategoryImpl &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeCategoryImplCopyWith<_$ChangeCategoryImpl> get copyWith =>
      __$$ChangeCategoryImplCopyWithImpl<_$ChangeCategoryImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String baseCurrency) getExchangeRate,
    required TResult Function(int categoryId) changeCategory,
    required TResult Function() clearExpenseRequestModel,
    required TResult Function(double amount) changeAmount,
    required TResult Function(String currency) changeCurrency,
    required TResult Function(double rate) changeRate,
    required TResult Function(DateTime date) changeDate,
    required TResult Function(File? receipt) submitReceipt,
    required TResult Function(AddExpenseModel? expense) submitExpense,
  }) {
    return changeCategory(categoryId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String baseCurrency)? getExchangeRate,
    TResult? Function(int categoryId)? changeCategory,
    TResult? Function()? clearExpenseRequestModel,
    TResult? Function(double amount)? changeAmount,
    TResult? Function(String currency)? changeCurrency,
    TResult? Function(double rate)? changeRate,
    TResult? Function(DateTime date)? changeDate,
    TResult? Function(File? receipt)? submitReceipt,
    TResult? Function(AddExpenseModel? expense)? submitExpense,
  }) {
    return changeCategory?.call(categoryId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String baseCurrency)? getExchangeRate,
    TResult Function(int categoryId)? changeCategory,
    TResult Function()? clearExpenseRequestModel,
    TResult Function(double amount)? changeAmount,
    TResult Function(String currency)? changeCurrency,
    TResult Function(double rate)? changeRate,
    TResult Function(DateTime date)? changeDate,
    TResult Function(File? receipt)? submitReceipt,
    TResult Function(AddExpenseModel? expense)? submitExpense,
    required TResult orElse(),
  }) {
    if (changeCategory != null) {
      return changeCategory(categoryId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetExchangeRate value) getExchangeRate,
    required TResult Function(ChangeCategory value) changeCategory,
    required TResult Function(ClearExpenseRequestModel value)
        clearExpenseRequestModel,
    required TResult Function(ChangeAmount value) changeAmount,
    required TResult Function(ChangeCurrency value) changeCurrency,
    required TResult Function(ChangeRate value) changeRate,
    required TResult Function(ChangeDate value) changeDate,
    required TResult Function(SubmitReceipt value) submitReceipt,
    required TResult Function(SubmitExpense value) submitExpense,
  }) {
    return changeCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetExchangeRate value)? getExchangeRate,
    TResult? Function(ChangeCategory value)? changeCategory,
    TResult? Function(ClearExpenseRequestModel value)? clearExpenseRequestModel,
    TResult? Function(ChangeAmount value)? changeAmount,
    TResult? Function(ChangeCurrency value)? changeCurrency,
    TResult? Function(ChangeRate value)? changeRate,
    TResult? Function(ChangeDate value)? changeDate,
    TResult? Function(SubmitReceipt value)? submitReceipt,
    TResult? Function(SubmitExpense value)? submitExpense,
  }) {
    return changeCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetExchangeRate value)? getExchangeRate,
    TResult Function(ChangeCategory value)? changeCategory,
    TResult Function(ClearExpenseRequestModel value)? clearExpenseRequestModel,
    TResult Function(ChangeAmount value)? changeAmount,
    TResult Function(ChangeCurrency value)? changeCurrency,
    TResult Function(ChangeRate value)? changeRate,
    TResult Function(ChangeDate value)? changeDate,
    TResult Function(SubmitReceipt value)? submitReceipt,
    TResult Function(SubmitExpense value)? submitExpense,
    required TResult orElse(),
  }) {
    if (changeCategory != null) {
      return changeCategory(this);
    }
    return orElse();
  }
}

abstract class ChangeCategory implements ExpenseEvent {
  const factory ChangeCategory(final int categoryId) = _$ChangeCategoryImpl;

  int get categoryId;
  @JsonKey(ignore: true)
  _$$ChangeCategoryImplCopyWith<_$ChangeCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearExpenseRequestModelImplCopyWith<$Res> {
  factory _$$ClearExpenseRequestModelImplCopyWith(
          _$ClearExpenseRequestModelImpl value,
          $Res Function(_$ClearExpenseRequestModelImpl) then) =
      __$$ClearExpenseRequestModelImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearExpenseRequestModelImplCopyWithImpl<$Res>
    extends _$ExpenseEventCopyWithImpl<$Res, _$ClearExpenseRequestModelImpl>
    implements _$$ClearExpenseRequestModelImplCopyWith<$Res> {
  __$$ClearExpenseRequestModelImplCopyWithImpl(
      _$ClearExpenseRequestModelImpl _value,
      $Res Function(_$ClearExpenseRequestModelImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearExpenseRequestModelImpl implements ClearExpenseRequestModel {
  const _$ClearExpenseRequestModelImpl();

  @override
  String toString() {
    return 'ExpenseEvent.clearExpenseRequestModel()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearExpenseRequestModelImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String baseCurrency) getExchangeRate,
    required TResult Function(int categoryId) changeCategory,
    required TResult Function() clearExpenseRequestModel,
    required TResult Function(double amount) changeAmount,
    required TResult Function(String currency) changeCurrency,
    required TResult Function(double rate) changeRate,
    required TResult Function(DateTime date) changeDate,
    required TResult Function(File? receipt) submitReceipt,
    required TResult Function(AddExpenseModel? expense) submitExpense,
  }) {
    return clearExpenseRequestModel();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String baseCurrency)? getExchangeRate,
    TResult? Function(int categoryId)? changeCategory,
    TResult? Function()? clearExpenseRequestModel,
    TResult? Function(double amount)? changeAmount,
    TResult? Function(String currency)? changeCurrency,
    TResult? Function(double rate)? changeRate,
    TResult? Function(DateTime date)? changeDate,
    TResult? Function(File? receipt)? submitReceipt,
    TResult? Function(AddExpenseModel? expense)? submitExpense,
  }) {
    return clearExpenseRequestModel?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String baseCurrency)? getExchangeRate,
    TResult Function(int categoryId)? changeCategory,
    TResult Function()? clearExpenseRequestModel,
    TResult Function(double amount)? changeAmount,
    TResult Function(String currency)? changeCurrency,
    TResult Function(double rate)? changeRate,
    TResult Function(DateTime date)? changeDate,
    TResult Function(File? receipt)? submitReceipt,
    TResult Function(AddExpenseModel? expense)? submitExpense,
    required TResult orElse(),
  }) {
    if (clearExpenseRequestModel != null) {
      return clearExpenseRequestModel();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetExchangeRate value) getExchangeRate,
    required TResult Function(ChangeCategory value) changeCategory,
    required TResult Function(ClearExpenseRequestModel value)
        clearExpenseRequestModel,
    required TResult Function(ChangeAmount value) changeAmount,
    required TResult Function(ChangeCurrency value) changeCurrency,
    required TResult Function(ChangeRate value) changeRate,
    required TResult Function(ChangeDate value) changeDate,
    required TResult Function(SubmitReceipt value) submitReceipt,
    required TResult Function(SubmitExpense value) submitExpense,
  }) {
    return clearExpenseRequestModel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetExchangeRate value)? getExchangeRate,
    TResult? Function(ChangeCategory value)? changeCategory,
    TResult? Function(ClearExpenseRequestModel value)? clearExpenseRequestModel,
    TResult? Function(ChangeAmount value)? changeAmount,
    TResult? Function(ChangeCurrency value)? changeCurrency,
    TResult? Function(ChangeRate value)? changeRate,
    TResult? Function(ChangeDate value)? changeDate,
    TResult? Function(SubmitReceipt value)? submitReceipt,
    TResult? Function(SubmitExpense value)? submitExpense,
  }) {
    return clearExpenseRequestModel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetExchangeRate value)? getExchangeRate,
    TResult Function(ChangeCategory value)? changeCategory,
    TResult Function(ClearExpenseRequestModel value)? clearExpenseRequestModel,
    TResult Function(ChangeAmount value)? changeAmount,
    TResult Function(ChangeCurrency value)? changeCurrency,
    TResult Function(ChangeRate value)? changeRate,
    TResult Function(ChangeDate value)? changeDate,
    TResult Function(SubmitReceipt value)? submitReceipt,
    TResult Function(SubmitExpense value)? submitExpense,
    required TResult orElse(),
  }) {
    if (clearExpenseRequestModel != null) {
      return clearExpenseRequestModel(this);
    }
    return orElse();
  }
}

abstract class ClearExpenseRequestModel implements ExpenseEvent {
  const factory ClearExpenseRequestModel() = _$ClearExpenseRequestModelImpl;
}

/// @nodoc
abstract class _$$ChangeAmountImplCopyWith<$Res> {
  factory _$$ChangeAmountImplCopyWith(
          _$ChangeAmountImpl value, $Res Function(_$ChangeAmountImpl) then) =
      __$$ChangeAmountImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double amount});
}

/// @nodoc
class __$$ChangeAmountImplCopyWithImpl<$Res>
    extends _$ExpenseEventCopyWithImpl<$Res, _$ChangeAmountImpl>
    implements _$$ChangeAmountImplCopyWith<$Res> {
  __$$ChangeAmountImplCopyWithImpl(
      _$ChangeAmountImpl _value, $Res Function(_$ChangeAmountImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
  }) {
    return _then(_$ChangeAmountImpl(
      null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$ChangeAmountImpl implements ChangeAmount {
  const _$ChangeAmountImpl(this.amount);

  @override
  final double amount;

  @override
  String toString() {
    return 'ExpenseEvent.changeAmount(amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeAmountImpl &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeAmountImplCopyWith<_$ChangeAmountImpl> get copyWith =>
      __$$ChangeAmountImplCopyWithImpl<_$ChangeAmountImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String baseCurrency) getExchangeRate,
    required TResult Function(int categoryId) changeCategory,
    required TResult Function() clearExpenseRequestModel,
    required TResult Function(double amount) changeAmount,
    required TResult Function(String currency) changeCurrency,
    required TResult Function(double rate) changeRate,
    required TResult Function(DateTime date) changeDate,
    required TResult Function(File? receipt) submitReceipt,
    required TResult Function(AddExpenseModel? expense) submitExpense,
  }) {
    return changeAmount(amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String baseCurrency)? getExchangeRate,
    TResult? Function(int categoryId)? changeCategory,
    TResult? Function()? clearExpenseRequestModel,
    TResult? Function(double amount)? changeAmount,
    TResult? Function(String currency)? changeCurrency,
    TResult? Function(double rate)? changeRate,
    TResult? Function(DateTime date)? changeDate,
    TResult? Function(File? receipt)? submitReceipt,
    TResult? Function(AddExpenseModel? expense)? submitExpense,
  }) {
    return changeAmount?.call(amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String baseCurrency)? getExchangeRate,
    TResult Function(int categoryId)? changeCategory,
    TResult Function()? clearExpenseRequestModel,
    TResult Function(double amount)? changeAmount,
    TResult Function(String currency)? changeCurrency,
    TResult Function(double rate)? changeRate,
    TResult Function(DateTime date)? changeDate,
    TResult Function(File? receipt)? submitReceipt,
    TResult Function(AddExpenseModel? expense)? submitExpense,
    required TResult orElse(),
  }) {
    if (changeAmount != null) {
      return changeAmount(amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetExchangeRate value) getExchangeRate,
    required TResult Function(ChangeCategory value) changeCategory,
    required TResult Function(ClearExpenseRequestModel value)
        clearExpenseRequestModel,
    required TResult Function(ChangeAmount value) changeAmount,
    required TResult Function(ChangeCurrency value) changeCurrency,
    required TResult Function(ChangeRate value) changeRate,
    required TResult Function(ChangeDate value) changeDate,
    required TResult Function(SubmitReceipt value) submitReceipt,
    required TResult Function(SubmitExpense value) submitExpense,
  }) {
    return changeAmount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetExchangeRate value)? getExchangeRate,
    TResult? Function(ChangeCategory value)? changeCategory,
    TResult? Function(ClearExpenseRequestModel value)? clearExpenseRequestModel,
    TResult? Function(ChangeAmount value)? changeAmount,
    TResult? Function(ChangeCurrency value)? changeCurrency,
    TResult? Function(ChangeRate value)? changeRate,
    TResult? Function(ChangeDate value)? changeDate,
    TResult? Function(SubmitReceipt value)? submitReceipt,
    TResult? Function(SubmitExpense value)? submitExpense,
  }) {
    return changeAmount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetExchangeRate value)? getExchangeRate,
    TResult Function(ChangeCategory value)? changeCategory,
    TResult Function(ClearExpenseRequestModel value)? clearExpenseRequestModel,
    TResult Function(ChangeAmount value)? changeAmount,
    TResult Function(ChangeCurrency value)? changeCurrency,
    TResult Function(ChangeRate value)? changeRate,
    TResult Function(ChangeDate value)? changeDate,
    TResult Function(SubmitReceipt value)? submitReceipt,
    TResult Function(SubmitExpense value)? submitExpense,
    required TResult orElse(),
  }) {
    if (changeAmount != null) {
      return changeAmount(this);
    }
    return orElse();
  }
}

abstract class ChangeAmount implements ExpenseEvent {
  const factory ChangeAmount(final double amount) = _$ChangeAmountImpl;

  double get amount;
  @JsonKey(ignore: true)
  _$$ChangeAmountImplCopyWith<_$ChangeAmountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeCurrencyImplCopyWith<$Res> {
  factory _$$ChangeCurrencyImplCopyWith(_$ChangeCurrencyImpl value,
          $Res Function(_$ChangeCurrencyImpl) then) =
      __$$ChangeCurrencyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String currency});
}

/// @nodoc
class __$$ChangeCurrencyImplCopyWithImpl<$Res>
    extends _$ExpenseEventCopyWithImpl<$Res, _$ChangeCurrencyImpl>
    implements _$$ChangeCurrencyImplCopyWith<$Res> {
  __$$ChangeCurrencyImplCopyWithImpl(
      _$ChangeCurrencyImpl _value, $Res Function(_$ChangeCurrencyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currency = null,
  }) {
    return _then(_$ChangeCurrencyImpl(
      null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangeCurrencyImpl implements ChangeCurrency {
  const _$ChangeCurrencyImpl(this.currency);

  @override
  final String currency;

  @override
  String toString() {
    return 'ExpenseEvent.changeCurrency(currency: $currency)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeCurrencyImpl &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currency);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeCurrencyImplCopyWith<_$ChangeCurrencyImpl> get copyWith =>
      __$$ChangeCurrencyImplCopyWithImpl<_$ChangeCurrencyImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String baseCurrency) getExchangeRate,
    required TResult Function(int categoryId) changeCategory,
    required TResult Function() clearExpenseRequestModel,
    required TResult Function(double amount) changeAmount,
    required TResult Function(String currency) changeCurrency,
    required TResult Function(double rate) changeRate,
    required TResult Function(DateTime date) changeDate,
    required TResult Function(File? receipt) submitReceipt,
    required TResult Function(AddExpenseModel? expense) submitExpense,
  }) {
    return changeCurrency(currency);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String baseCurrency)? getExchangeRate,
    TResult? Function(int categoryId)? changeCategory,
    TResult? Function()? clearExpenseRequestModel,
    TResult? Function(double amount)? changeAmount,
    TResult? Function(String currency)? changeCurrency,
    TResult? Function(double rate)? changeRate,
    TResult? Function(DateTime date)? changeDate,
    TResult? Function(File? receipt)? submitReceipt,
    TResult? Function(AddExpenseModel? expense)? submitExpense,
  }) {
    return changeCurrency?.call(currency);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String baseCurrency)? getExchangeRate,
    TResult Function(int categoryId)? changeCategory,
    TResult Function()? clearExpenseRequestModel,
    TResult Function(double amount)? changeAmount,
    TResult Function(String currency)? changeCurrency,
    TResult Function(double rate)? changeRate,
    TResult Function(DateTime date)? changeDate,
    TResult Function(File? receipt)? submitReceipt,
    TResult Function(AddExpenseModel? expense)? submitExpense,
    required TResult orElse(),
  }) {
    if (changeCurrency != null) {
      return changeCurrency(currency);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetExchangeRate value) getExchangeRate,
    required TResult Function(ChangeCategory value) changeCategory,
    required TResult Function(ClearExpenseRequestModel value)
        clearExpenseRequestModel,
    required TResult Function(ChangeAmount value) changeAmount,
    required TResult Function(ChangeCurrency value) changeCurrency,
    required TResult Function(ChangeRate value) changeRate,
    required TResult Function(ChangeDate value) changeDate,
    required TResult Function(SubmitReceipt value) submitReceipt,
    required TResult Function(SubmitExpense value) submitExpense,
  }) {
    return changeCurrency(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetExchangeRate value)? getExchangeRate,
    TResult? Function(ChangeCategory value)? changeCategory,
    TResult? Function(ClearExpenseRequestModel value)? clearExpenseRequestModel,
    TResult? Function(ChangeAmount value)? changeAmount,
    TResult? Function(ChangeCurrency value)? changeCurrency,
    TResult? Function(ChangeRate value)? changeRate,
    TResult? Function(ChangeDate value)? changeDate,
    TResult? Function(SubmitReceipt value)? submitReceipt,
    TResult? Function(SubmitExpense value)? submitExpense,
  }) {
    return changeCurrency?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetExchangeRate value)? getExchangeRate,
    TResult Function(ChangeCategory value)? changeCategory,
    TResult Function(ClearExpenseRequestModel value)? clearExpenseRequestModel,
    TResult Function(ChangeAmount value)? changeAmount,
    TResult Function(ChangeCurrency value)? changeCurrency,
    TResult Function(ChangeRate value)? changeRate,
    TResult Function(ChangeDate value)? changeDate,
    TResult Function(SubmitReceipt value)? submitReceipt,
    TResult Function(SubmitExpense value)? submitExpense,
    required TResult orElse(),
  }) {
    if (changeCurrency != null) {
      return changeCurrency(this);
    }
    return orElse();
  }
}

abstract class ChangeCurrency implements ExpenseEvent {
  const factory ChangeCurrency(final String currency) = _$ChangeCurrencyImpl;

  String get currency;
  @JsonKey(ignore: true)
  _$$ChangeCurrencyImplCopyWith<_$ChangeCurrencyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeRateImplCopyWith<$Res> {
  factory _$$ChangeRateImplCopyWith(
          _$ChangeRateImpl value, $Res Function(_$ChangeRateImpl) then) =
      __$$ChangeRateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double rate});
}

/// @nodoc
class __$$ChangeRateImplCopyWithImpl<$Res>
    extends _$ExpenseEventCopyWithImpl<$Res, _$ChangeRateImpl>
    implements _$$ChangeRateImplCopyWith<$Res> {
  __$$ChangeRateImplCopyWithImpl(
      _$ChangeRateImpl _value, $Res Function(_$ChangeRateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rate = null,
  }) {
    return _then(_$ChangeRateImpl(
      null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$ChangeRateImpl implements ChangeRate {
  const _$ChangeRateImpl(this.rate);

  @override
  final double rate;

  @override
  String toString() {
    return 'ExpenseEvent.changeRate(rate: $rate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeRateImpl &&
            (identical(other.rate, rate) || other.rate == rate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeRateImplCopyWith<_$ChangeRateImpl> get copyWith =>
      __$$ChangeRateImplCopyWithImpl<_$ChangeRateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String baseCurrency) getExchangeRate,
    required TResult Function(int categoryId) changeCategory,
    required TResult Function() clearExpenseRequestModel,
    required TResult Function(double amount) changeAmount,
    required TResult Function(String currency) changeCurrency,
    required TResult Function(double rate) changeRate,
    required TResult Function(DateTime date) changeDate,
    required TResult Function(File? receipt) submitReceipt,
    required TResult Function(AddExpenseModel? expense) submitExpense,
  }) {
    return changeRate(rate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String baseCurrency)? getExchangeRate,
    TResult? Function(int categoryId)? changeCategory,
    TResult? Function()? clearExpenseRequestModel,
    TResult? Function(double amount)? changeAmount,
    TResult? Function(String currency)? changeCurrency,
    TResult? Function(double rate)? changeRate,
    TResult? Function(DateTime date)? changeDate,
    TResult? Function(File? receipt)? submitReceipt,
    TResult? Function(AddExpenseModel? expense)? submitExpense,
  }) {
    return changeRate?.call(rate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String baseCurrency)? getExchangeRate,
    TResult Function(int categoryId)? changeCategory,
    TResult Function()? clearExpenseRequestModel,
    TResult Function(double amount)? changeAmount,
    TResult Function(String currency)? changeCurrency,
    TResult Function(double rate)? changeRate,
    TResult Function(DateTime date)? changeDate,
    TResult Function(File? receipt)? submitReceipt,
    TResult Function(AddExpenseModel? expense)? submitExpense,
    required TResult orElse(),
  }) {
    if (changeRate != null) {
      return changeRate(rate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetExchangeRate value) getExchangeRate,
    required TResult Function(ChangeCategory value) changeCategory,
    required TResult Function(ClearExpenseRequestModel value)
        clearExpenseRequestModel,
    required TResult Function(ChangeAmount value) changeAmount,
    required TResult Function(ChangeCurrency value) changeCurrency,
    required TResult Function(ChangeRate value) changeRate,
    required TResult Function(ChangeDate value) changeDate,
    required TResult Function(SubmitReceipt value) submitReceipt,
    required TResult Function(SubmitExpense value) submitExpense,
  }) {
    return changeRate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetExchangeRate value)? getExchangeRate,
    TResult? Function(ChangeCategory value)? changeCategory,
    TResult? Function(ClearExpenseRequestModel value)? clearExpenseRequestModel,
    TResult? Function(ChangeAmount value)? changeAmount,
    TResult? Function(ChangeCurrency value)? changeCurrency,
    TResult? Function(ChangeRate value)? changeRate,
    TResult? Function(ChangeDate value)? changeDate,
    TResult? Function(SubmitReceipt value)? submitReceipt,
    TResult? Function(SubmitExpense value)? submitExpense,
  }) {
    return changeRate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetExchangeRate value)? getExchangeRate,
    TResult Function(ChangeCategory value)? changeCategory,
    TResult Function(ClearExpenseRequestModel value)? clearExpenseRequestModel,
    TResult Function(ChangeAmount value)? changeAmount,
    TResult Function(ChangeCurrency value)? changeCurrency,
    TResult Function(ChangeRate value)? changeRate,
    TResult Function(ChangeDate value)? changeDate,
    TResult Function(SubmitReceipt value)? submitReceipt,
    TResult Function(SubmitExpense value)? submitExpense,
    required TResult orElse(),
  }) {
    if (changeRate != null) {
      return changeRate(this);
    }
    return orElse();
  }
}

abstract class ChangeRate implements ExpenseEvent {
  const factory ChangeRate(final double rate) = _$ChangeRateImpl;

  double get rate;
  @JsonKey(ignore: true)
  _$$ChangeRateImplCopyWith<_$ChangeRateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeDateImplCopyWith<$Res> {
  factory _$$ChangeDateImplCopyWith(
          _$ChangeDateImpl value, $Res Function(_$ChangeDateImpl) then) =
      __$$ChangeDateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime date});
}

/// @nodoc
class __$$ChangeDateImplCopyWithImpl<$Res>
    extends _$ExpenseEventCopyWithImpl<$Res, _$ChangeDateImpl>
    implements _$$ChangeDateImplCopyWith<$Res> {
  __$$ChangeDateImplCopyWithImpl(
      _$ChangeDateImpl _value, $Res Function(_$ChangeDateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$ChangeDateImpl(
      null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$ChangeDateImpl implements ChangeDate {
  const _$ChangeDateImpl(this.date);

  @override
  final DateTime date;

  @override
  String toString() {
    return 'ExpenseEvent.changeDate(date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeDateImpl &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeDateImplCopyWith<_$ChangeDateImpl> get copyWith =>
      __$$ChangeDateImplCopyWithImpl<_$ChangeDateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String baseCurrency) getExchangeRate,
    required TResult Function(int categoryId) changeCategory,
    required TResult Function() clearExpenseRequestModel,
    required TResult Function(double amount) changeAmount,
    required TResult Function(String currency) changeCurrency,
    required TResult Function(double rate) changeRate,
    required TResult Function(DateTime date) changeDate,
    required TResult Function(File? receipt) submitReceipt,
    required TResult Function(AddExpenseModel? expense) submitExpense,
  }) {
    return changeDate(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String baseCurrency)? getExchangeRate,
    TResult? Function(int categoryId)? changeCategory,
    TResult? Function()? clearExpenseRequestModel,
    TResult? Function(double amount)? changeAmount,
    TResult? Function(String currency)? changeCurrency,
    TResult? Function(double rate)? changeRate,
    TResult? Function(DateTime date)? changeDate,
    TResult? Function(File? receipt)? submitReceipt,
    TResult? Function(AddExpenseModel? expense)? submitExpense,
  }) {
    return changeDate?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String baseCurrency)? getExchangeRate,
    TResult Function(int categoryId)? changeCategory,
    TResult Function()? clearExpenseRequestModel,
    TResult Function(double amount)? changeAmount,
    TResult Function(String currency)? changeCurrency,
    TResult Function(double rate)? changeRate,
    TResult Function(DateTime date)? changeDate,
    TResult Function(File? receipt)? submitReceipt,
    TResult Function(AddExpenseModel? expense)? submitExpense,
    required TResult orElse(),
  }) {
    if (changeDate != null) {
      return changeDate(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetExchangeRate value) getExchangeRate,
    required TResult Function(ChangeCategory value) changeCategory,
    required TResult Function(ClearExpenseRequestModel value)
        clearExpenseRequestModel,
    required TResult Function(ChangeAmount value) changeAmount,
    required TResult Function(ChangeCurrency value) changeCurrency,
    required TResult Function(ChangeRate value) changeRate,
    required TResult Function(ChangeDate value) changeDate,
    required TResult Function(SubmitReceipt value) submitReceipt,
    required TResult Function(SubmitExpense value) submitExpense,
  }) {
    return changeDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetExchangeRate value)? getExchangeRate,
    TResult? Function(ChangeCategory value)? changeCategory,
    TResult? Function(ClearExpenseRequestModel value)? clearExpenseRequestModel,
    TResult? Function(ChangeAmount value)? changeAmount,
    TResult? Function(ChangeCurrency value)? changeCurrency,
    TResult? Function(ChangeRate value)? changeRate,
    TResult? Function(ChangeDate value)? changeDate,
    TResult? Function(SubmitReceipt value)? submitReceipt,
    TResult? Function(SubmitExpense value)? submitExpense,
  }) {
    return changeDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetExchangeRate value)? getExchangeRate,
    TResult Function(ChangeCategory value)? changeCategory,
    TResult Function(ClearExpenseRequestModel value)? clearExpenseRequestModel,
    TResult Function(ChangeAmount value)? changeAmount,
    TResult Function(ChangeCurrency value)? changeCurrency,
    TResult Function(ChangeRate value)? changeRate,
    TResult Function(ChangeDate value)? changeDate,
    TResult Function(SubmitReceipt value)? submitReceipt,
    TResult Function(SubmitExpense value)? submitExpense,
    required TResult orElse(),
  }) {
    if (changeDate != null) {
      return changeDate(this);
    }
    return orElse();
  }
}

abstract class ChangeDate implements ExpenseEvent {
  const factory ChangeDate(final DateTime date) = _$ChangeDateImpl;

  DateTime get date;
  @JsonKey(ignore: true)
  _$$ChangeDateImplCopyWith<_$ChangeDateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubmitReceiptImplCopyWith<$Res> {
  factory _$$SubmitReceiptImplCopyWith(
          _$SubmitReceiptImpl value, $Res Function(_$SubmitReceiptImpl) then) =
      __$$SubmitReceiptImplCopyWithImpl<$Res>;
  @useResult
  $Res call({File? receipt});
}

/// @nodoc
class __$$SubmitReceiptImplCopyWithImpl<$Res>
    extends _$ExpenseEventCopyWithImpl<$Res, _$SubmitReceiptImpl>
    implements _$$SubmitReceiptImplCopyWith<$Res> {
  __$$SubmitReceiptImplCopyWithImpl(
      _$SubmitReceiptImpl _value, $Res Function(_$SubmitReceiptImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receipt = freezed,
  }) {
    return _then(_$SubmitReceiptImpl(
      freezed == receipt
          ? _value.receipt
          : receipt // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc

class _$SubmitReceiptImpl implements SubmitReceipt {
  const _$SubmitReceiptImpl(this.receipt);

  @override
  final File? receipt;

  @override
  String toString() {
    return 'ExpenseEvent.submitReceipt(receipt: $receipt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitReceiptImpl &&
            (identical(other.receipt, receipt) || other.receipt == receipt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, receipt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitReceiptImplCopyWith<_$SubmitReceiptImpl> get copyWith =>
      __$$SubmitReceiptImplCopyWithImpl<_$SubmitReceiptImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String baseCurrency) getExchangeRate,
    required TResult Function(int categoryId) changeCategory,
    required TResult Function() clearExpenseRequestModel,
    required TResult Function(double amount) changeAmount,
    required TResult Function(String currency) changeCurrency,
    required TResult Function(double rate) changeRate,
    required TResult Function(DateTime date) changeDate,
    required TResult Function(File? receipt) submitReceipt,
    required TResult Function(AddExpenseModel? expense) submitExpense,
  }) {
    return submitReceipt(receipt);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String baseCurrency)? getExchangeRate,
    TResult? Function(int categoryId)? changeCategory,
    TResult? Function()? clearExpenseRequestModel,
    TResult? Function(double amount)? changeAmount,
    TResult? Function(String currency)? changeCurrency,
    TResult? Function(double rate)? changeRate,
    TResult? Function(DateTime date)? changeDate,
    TResult? Function(File? receipt)? submitReceipt,
    TResult? Function(AddExpenseModel? expense)? submitExpense,
  }) {
    return submitReceipt?.call(receipt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String baseCurrency)? getExchangeRate,
    TResult Function(int categoryId)? changeCategory,
    TResult Function()? clearExpenseRequestModel,
    TResult Function(double amount)? changeAmount,
    TResult Function(String currency)? changeCurrency,
    TResult Function(double rate)? changeRate,
    TResult Function(DateTime date)? changeDate,
    TResult Function(File? receipt)? submitReceipt,
    TResult Function(AddExpenseModel? expense)? submitExpense,
    required TResult orElse(),
  }) {
    if (submitReceipt != null) {
      return submitReceipt(receipt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetExchangeRate value) getExchangeRate,
    required TResult Function(ChangeCategory value) changeCategory,
    required TResult Function(ClearExpenseRequestModel value)
        clearExpenseRequestModel,
    required TResult Function(ChangeAmount value) changeAmount,
    required TResult Function(ChangeCurrency value) changeCurrency,
    required TResult Function(ChangeRate value) changeRate,
    required TResult Function(ChangeDate value) changeDate,
    required TResult Function(SubmitReceipt value) submitReceipt,
    required TResult Function(SubmitExpense value) submitExpense,
  }) {
    return submitReceipt(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetExchangeRate value)? getExchangeRate,
    TResult? Function(ChangeCategory value)? changeCategory,
    TResult? Function(ClearExpenseRequestModel value)? clearExpenseRequestModel,
    TResult? Function(ChangeAmount value)? changeAmount,
    TResult? Function(ChangeCurrency value)? changeCurrency,
    TResult? Function(ChangeRate value)? changeRate,
    TResult? Function(ChangeDate value)? changeDate,
    TResult? Function(SubmitReceipt value)? submitReceipt,
    TResult? Function(SubmitExpense value)? submitExpense,
  }) {
    return submitReceipt?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetExchangeRate value)? getExchangeRate,
    TResult Function(ChangeCategory value)? changeCategory,
    TResult Function(ClearExpenseRequestModel value)? clearExpenseRequestModel,
    TResult Function(ChangeAmount value)? changeAmount,
    TResult Function(ChangeCurrency value)? changeCurrency,
    TResult Function(ChangeRate value)? changeRate,
    TResult Function(ChangeDate value)? changeDate,
    TResult Function(SubmitReceipt value)? submitReceipt,
    TResult Function(SubmitExpense value)? submitExpense,
    required TResult orElse(),
  }) {
    if (submitReceipt != null) {
      return submitReceipt(this);
    }
    return orElse();
  }
}

abstract class SubmitReceipt implements ExpenseEvent {
  const factory SubmitReceipt(final File? receipt) = _$SubmitReceiptImpl;

  File? get receipt;
  @JsonKey(ignore: true)
  _$$SubmitReceiptImplCopyWith<_$SubmitReceiptImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubmitExpenseImplCopyWith<$Res> {
  factory _$$SubmitExpenseImplCopyWith(
          _$SubmitExpenseImpl value, $Res Function(_$SubmitExpenseImpl) then) =
      __$$SubmitExpenseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AddExpenseModel? expense});

  $AddExpenseModelCopyWith<$Res>? get expense;
}

/// @nodoc
class __$$SubmitExpenseImplCopyWithImpl<$Res>
    extends _$ExpenseEventCopyWithImpl<$Res, _$SubmitExpenseImpl>
    implements _$$SubmitExpenseImplCopyWith<$Res> {
  __$$SubmitExpenseImplCopyWithImpl(
      _$SubmitExpenseImpl _value, $Res Function(_$SubmitExpenseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expense = freezed,
  }) {
    return _then(_$SubmitExpenseImpl(
      freezed == expense
          ? _value.expense
          : expense // ignore: cast_nullable_to_non_nullable
              as AddExpenseModel?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AddExpenseModelCopyWith<$Res>? get expense {
    if (_value.expense == null) {
      return null;
    }

    return $AddExpenseModelCopyWith<$Res>(_value.expense!, (value) {
      return _then(_value.copyWith(expense: value));
    });
  }
}

/// @nodoc

class _$SubmitExpenseImpl implements SubmitExpense {
  const _$SubmitExpenseImpl(this.expense);

  @override
  final AddExpenseModel? expense;

  @override
  String toString() {
    return 'ExpenseEvent.submitExpense(expense: $expense)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitExpenseImpl &&
            (identical(other.expense, expense) || other.expense == expense));
  }

  @override
  int get hashCode => Object.hash(runtimeType, expense);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitExpenseImplCopyWith<_$SubmitExpenseImpl> get copyWith =>
      __$$SubmitExpenseImplCopyWithImpl<_$SubmitExpenseImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String baseCurrency) getExchangeRate,
    required TResult Function(int categoryId) changeCategory,
    required TResult Function() clearExpenseRequestModel,
    required TResult Function(double amount) changeAmount,
    required TResult Function(String currency) changeCurrency,
    required TResult Function(double rate) changeRate,
    required TResult Function(DateTime date) changeDate,
    required TResult Function(File? receipt) submitReceipt,
    required TResult Function(AddExpenseModel? expense) submitExpense,
  }) {
    return submitExpense(expense);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String baseCurrency)? getExchangeRate,
    TResult? Function(int categoryId)? changeCategory,
    TResult? Function()? clearExpenseRequestModel,
    TResult? Function(double amount)? changeAmount,
    TResult? Function(String currency)? changeCurrency,
    TResult? Function(double rate)? changeRate,
    TResult? Function(DateTime date)? changeDate,
    TResult? Function(File? receipt)? submitReceipt,
    TResult? Function(AddExpenseModel? expense)? submitExpense,
  }) {
    return submitExpense?.call(expense);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String baseCurrency)? getExchangeRate,
    TResult Function(int categoryId)? changeCategory,
    TResult Function()? clearExpenseRequestModel,
    TResult Function(double amount)? changeAmount,
    TResult Function(String currency)? changeCurrency,
    TResult Function(double rate)? changeRate,
    TResult Function(DateTime date)? changeDate,
    TResult Function(File? receipt)? submitReceipt,
    TResult Function(AddExpenseModel? expense)? submitExpense,
    required TResult orElse(),
  }) {
    if (submitExpense != null) {
      return submitExpense(expense);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetExchangeRate value) getExchangeRate,
    required TResult Function(ChangeCategory value) changeCategory,
    required TResult Function(ClearExpenseRequestModel value)
        clearExpenseRequestModel,
    required TResult Function(ChangeAmount value) changeAmount,
    required TResult Function(ChangeCurrency value) changeCurrency,
    required TResult Function(ChangeRate value) changeRate,
    required TResult Function(ChangeDate value) changeDate,
    required TResult Function(SubmitReceipt value) submitReceipt,
    required TResult Function(SubmitExpense value) submitExpense,
  }) {
    return submitExpense(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetExchangeRate value)? getExchangeRate,
    TResult? Function(ChangeCategory value)? changeCategory,
    TResult? Function(ClearExpenseRequestModel value)? clearExpenseRequestModel,
    TResult? Function(ChangeAmount value)? changeAmount,
    TResult? Function(ChangeCurrency value)? changeCurrency,
    TResult? Function(ChangeRate value)? changeRate,
    TResult? Function(ChangeDate value)? changeDate,
    TResult? Function(SubmitReceipt value)? submitReceipt,
    TResult? Function(SubmitExpense value)? submitExpense,
  }) {
    return submitExpense?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetExchangeRate value)? getExchangeRate,
    TResult Function(ChangeCategory value)? changeCategory,
    TResult Function(ClearExpenseRequestModel value)? clearExpenseRequestModel,
    TResult Function(ChangeAmount value)? changeAmount,
    TResult Function(ChangeCurrency value)? changeCurrency,
    TResult Function(ChangeRate value)? changeRate,
    TResult Function(ChangeDate value)? changeDate,
    TResult Function(SubmitReceipt value)? submitReceipt,
    TResult Function(SubmitExpense value)? submitExpense,
    required TResult orElse(),
  }) {
    if (submitExpense != null) {
      return submitExpense(this);
    }
    return orElse();
  }
}

abstract class SubmitExpense implements ExpenseEvent {
  const factory SubmitExpense(final AddExpenseModel? expense) =
      _$SubmitExpenseImpl;

  AddExpenseModel? get expense;
  @JsonKey(ignore: true)
  _$$SubmitExpenseImplCopyWith<_$SubmitExpenseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
