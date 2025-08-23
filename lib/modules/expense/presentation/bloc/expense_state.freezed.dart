// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expense_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ExpenseState {
  bool get isLoadingExchangeRate => throw _privateConstructorUsedError;
  bool get isLoadingSubmitExpense => throw _privateConstructorUsedError;
  ExchangeRateResponse? get exchangeRateResponse =>
      throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  AddExpenseModel? get addExpenseModel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExpenseStateCopyWith<ExpenseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpenseStateCopyWith<$Res> {
  factory $ExpenseStateCopyWith(
          ExpenseState value, $Res Function(ExpenseState) then) =
      _$ExpenseStateCopyWithImpl<$Res, ExpenseState>;
  @useResult
  $Res call(
      {bool isLoadingExchangeRate,
      bool isLoadingSubmitExpense,
      ExchangeRateResponse? exchangeRateResponse,
      String? errorMessage,
      AddExpenseModel? addExpenseModel});

  $ExchangeRateResponseCopyWith<$Res>? get exchangeRateResponse;
  $AddExpenseModelCopyWith<$Res>? get addExpenseModel;
}

/// @nodoc
class _$ExpenseStateCopyWithImpl<$Res, $Val extends ExpenseState>
    implements $ExpenseStateCopyWith<$Res> {
  _$ExpenseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoadingExchangeRate = null,
    Object? isLoadingSubmitExpense = null,
    Object? exchangeRateResponse = freezed,
    Object? errorMessage = freezed,
    Object? addExpenseModel = freezed,
  }) {
    return _then(_value.copyWith(
      isLoadingExchangeRate: null == isLoadingExchangeRate
          ? _value.isLoadingExchangeRate
          : isLoadingExchangeRate // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingSubmitExpense: null == isLoadingSubmitExpense
          ? _value.isLoadingSubmitExpense
          : isLoadingSubmitExpense // ignore: cast_nullable_to_non_nullable
              as bool,
      exchangeRateResponse: freezed == exchangeRateResponse
          ? _value.exchangeRateResponse
          : exchangeRateResponse // ignore: cast_nullable_to_non_nullable
              as ExchangeRateResponse?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      addExpenseModel: freezed == addExpenseModel
          ? _value.addExpenseModel
          : addExpenseModel // ignore: cast_nullable_to_non_nullable
              as AddExpenseModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ExchangeRateResponseCopyWith<$Res>? get exchangeRateResponse {
    if (_value.exchangeRateResponse == null) {
      return null;
    }

    return $ExchangeRateResponseCopyWith<$Res>(_value.exchangeRateResponse!,
        (value) {
      return _then(_value.copyWith(exchangeRateResponse: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AddExpenseModelCopyWith<$Res>? get addExpenseModel {
    if (_value.addExpenseModel == null) {
      return null;
    }

    return $AddExpenseModelCopyWith<$Res>(_value.addExpenseModel!, (value) {
      return _then(_value.copyWith(addExpenseModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ExpenseStateImplCopyWith<$Res>
    implements $ExpenseStateCopyWith<$Res> {
  factory _$$ExpenseStateImplCopyWith(
          _$ExpenseStateImpl value, $Res Function(_$ExpenseStateImpl) then) =
      __$$ExpenseStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoadingExchangeRate,
      bool isLoadingSubmitExpense,
      ExchangeRateResponse? exchangeRateResponse,
      String? errorMessage,
      AddExpenseModel? addExpenseModel});

  @override
  $ExchangeRateResponseCopyWith<$Res>? get exchangeRateResponse;
  @override
  $AddExpenseModelCopyWith<$Res>? get addExpenseModel;
}

/// @nodoc
class __$$ExpenseStateImplCopyWithImpl<$Res>
    extends _$ExpenseStateCopyWithImpl<$Res, _$ExpenseStateImpl>
    implements _$$ExpenseStateImplCopyWith<$Res> {
  __$$ExpenseStateImplCopyWithImpl(
      _$ExpenseStateImpl _value, $Res Function(_$ExpenseStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoadingExchangeRate = null,
    Object? isLoadingSubmitExpense = null,
    Object? exchangeRateResponse = freezed,
    Object? errorMessage = freezed,
    Object? addExpenseModel = freezed,
  }) {
    return _then(_$ExpenseStateImpl(
      isLoadingExchangeRate: null == isLoadingExchangeRate
          ? _value.isLoadingExchangeRate
          : isLoadingExchangeRate // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingSubmitExpense: null == isLoadingSubmitExpense
          ? _value.isLoadingSubmitExpense
          : isLoadingSubmitExpense // ignore: cast_nullable_to_non_nullable
              as bool,
      exchangeRateResponse: freezed == exchangeRateResponse
          ? _value.exchangeRateResponse
          : exchangeRateResponse // ignore: cast_nullable_to_non_nullable
              as ExchangeRateResponse?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      addExpenseModel: freezed == addExpenseModel
          ? _value.addExpenseModel
          : addExpenseModel // ignore: cast_nullable_to_non_nullable
              as AddExpenseModel?,
    ));
  }
}

/// @nodoc

class _$ExpenseStateImpl implements _ExpenseState {
  const _$ExpenseStateImpl(
      {this.isLoadingExchangeRate = false,
      this.isLoadingSubmitExpense = false,
      this.exchangeRateResponse,
      this.errorMessage,
      this.addExpenseModel = const AddExpenseModel()});

  @override
  @JsonKey()
  final bool isLoadingExchangeRate;
  @override
  @JsonKey()
  final bool isLoadingSubmitExpense;
  @override
  final ExchangeRateResponse? exchangeRateResponse;
  @override
  final String? errorMessage;
  @override
  @JsonKey()
  final AddExpenseModel? addExpenseModel;

  @override
  String toString() {
    return 'ExpenseState(isLoadingExchangeRate: $isLoadingExchangeRate, isLoadingSubmitExpense: $isLoadingSubmitExpense, exchangeRateResponse: $exchangeRateResponse, errorMessage: $errorMessage, addExpenseModel: $addExpenseModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpenseStateImpl &&
            (identical(other.isLoadingExchangeRate, isLoadingExchangeRate) ||
                other.isLoadingExchangeRate == isLoadingExchangeRate) &&
            (identical(other.isLoadingSubmitExpense, isLoadingSubmitExpense) ||
                other.isLoadingSubmitExpense == isLoadingSubmitExpense) &&
            (identical(other.exchangeRateResponse, exchangeRateResponse) ||
                other.exchangeRateResponse == exchangeRateResponse) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.addExpenseModel, addExpenseModel) ||
                other.addExpenseModel == addExpenseModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoadingExchangeRate,
      isLoadingSubmitExpense,
      exchangeRateResponse,
      errorMessage,
      addExpenseModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpenseStateImplCopyWith<_$ExpenseStateImpl> get copyWith =>
      __$$ExpenseStateImplCopyWithImpl<_$ExpenseStateImpl>(this, _$identity);
}

abstract class _ExpenseState implements ExpenseState {
  const factory _ExpenseState(
      {final bool isLoadingExchangeRate,
      final bool isLoadingSubmitExpense,
      final ExchangeRateResponse? exchangeRateResponse,
      final String? errorMessage,
      final AddExpenseModel? addExpenseModel}) = _$ExpenseStateImpl;

  @override
  bool get isLoadingExchangeRate;
  @override
  bool get isLoadingSubmitExpense;
  @override
  ExchangeRateResponse? get exchangeRateResponse;
  @override
  String? get errorMessage;
  @override
  AddExpenseModel? get addExpenseModel;
  @override
  @JsonKey(ignore: true)
  _$$ExpenseStateImplCopyWith<_$ExpenseStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
