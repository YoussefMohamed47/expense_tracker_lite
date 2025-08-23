// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isExpanded) expandTotalBalanceCard,
    required TResult Function() getExpenses,
    required TResult Function() loadNextPage,
    required TResult Function(String filterType) changeFilterType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isExpanded)? expandTotalBalanceCard,
    TResult? Function()? getExpenses,
    TResult? Function()? loadNextPage,
    TResult? Function(String filterType)? changeFilterType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isExpanded)? expandTotalBalanceCard,
    TResult Function()? getExpenses,
    TResult Function()? loadNextPage,
    TResult Function(String filterType)? changeFilterType,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExpandTotalBalanceCard value)
        expandTotalBalanceCard,
    required TResult Function(GetExpenses value) getExpenses,
    required TResult Function(LoadNextPage value) loadNextPage,
    required TResult Function(ChangeFilterType value) changeFilterType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExpandTotalBalanceCard value)? expandTotalBalanceCard,
    TResult? Function(GetExpenses value)? getExpenses,
    TResult? Function(LoadNextPage value)? loadNextPage,
    TResult? Function(ChangeFilterType value)? changeFilterType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExpandTotalBalanceCard value)? expandTotalBalanceCard,
    TResult Function(GetExpenses value)? getExpenses,
    TResult Function(LoadNextPage value)? loadNextPage,
    TResult Function(ChangeFilterType value)? changeFilterType,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ExpandTotalBalanceCardImplCopyWith<$Res> {
  factory _$$ExpandTotalBalanceCardImplCopyWith(
          _$ExpandTotalBalanceCardImpl value,
          $Res Function(_$ExpandTotalBalanceCardImpl) then) =
      __$$ExpandTotalBalanceCardImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isExpanded});
}

/// @nodoc
class __$$ExpandTotalBalanceCardImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$ExpandTotalBalanceCardImpl>
    implements _$$ExpandTotalBalanceCardImplCopyWith<$Res> {
  __$$ExpandTotalBalanceCardImplCopyWithImpl(
      _$ExpandTotalBalanceCardImpl _value,
      $Res Function(_$ExpandTotalBalanceCardImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isExpanded = null,
  }) {
    return _then(_$ExpandTotalBalanceCardImpl(
      null == isExpanded
          ? _value.isExpanded
          : isExpanded // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ExpandTotalBalanceCardImpl implements ExpandTotalBalanceCard {
  const _$ExpandTotalBalanceCardImpl(this.isExpanded);

  @override
  final bool isExpanded;

  @override
  String toString() {
    return 'HomeEvent.expandTotalBalanceCard(isExpanded: $isExpanded)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpandTotalBalanceCardImpl &&
            (identical(other.isExpanded, isExpanded) ||
                other.isExpanded == isExpanded));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isExpanded);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpandTotalBalanceCardImplCopyWith<_$ExpandTotalBalanceCardImpl>
      get copyWith => __$$ExpandTotalBalanceCardImplCopyWithImpl<
          _$ExpandTotalBalanceCardImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isExpanded) expandTotalBalanceCard,
    required TResult Function() getExpenses,
    required TResult Function() loadNextPage,
    required TResult Function(String filterType) changeFilterType,
  }) {
    return expandTotalBalanceCard(isExpanded);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isExpanded)? expandTotalBalanceCard,
    TResult? Function()? getExpenses,
    TResult? Function()? loadNextPage,
    TResult? Function(String filterType)? changeFilterType,
  }) {
    return expandTotalBalanceCard?.call(isExpanded);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isExpanded)? expandTotalBalanceCard,
    TResult Function()? getExpenses,
    TResult Function()? loadNextPage,
    TResult Function(String filterType)? changeFilterType,
    required TResult orElse(),
  }) {
    if (expandTotalBalanceCard != null) {
      return expandTotalBalanceCard(isExpanded);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExpandTotalBalanceCard value)
        expandTotalBalanceCard,
    required TResult Function(GetExpenses value) getExpenses,
    required TResult Function(LoadNextPage value) loadNextPage,
    required TResult Function(ChangeFilterType value) changeFilterType,
  }) {
    return expandTotalBalanceCard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExpandTotalBalanceCard value)? expandTotalBalanceCard,
    TResult? Function(GetExpenses value)? getExpenses,
    TResult? Function(LoadNextPage value)? loadNextPage,
    TResult? Function(ChangeFilterType value)? changeFilterType,
  }) {
    return expandTotalBalanceCard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExpandTotalBalanceCard value)? expandTotalBalanceCard,
    TResult Function(GetExpenses value)? getExpenses,
    TResult Function(LoadNextPage value)? loadNextPage,
    TResult Function(ChangeFilterType value)? changeFilterType,
    required TResult orElse(),
  }) {
    if (expandTotalBalanceCard != null) {
      return expandTotalBalanceCard(this);
    }
    return orElse();
  }
}

abstract class ExpandTotalBalanceCard implements HomeEvent {
  const factory ExpandTotalBalanceCard(final bool isExpanded) =
      _$ExpandTotalBalanceCardImpl;

  bool get isExpanded;
  @JsonKey(ignore: true)
  _$$ExpandTotalBalanceCardImplCopyWith<_$ExpandTotalBalanceCardImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetExpensesImplCopyWith<$Res> {
  factory _$$GetExpensesImplCopyWith(
          _$GetExpensesImpl value, $Res Function(_$GetExpensesImpl) then) =
      __$$GetExpensesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetExpensesImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetExpensesImpl>
    implements _$$GetExpensesImplCopyWith<$Res> {
  __$$GetExpensesImplCopyWithImpl(
      _$GetExpensesImpl _value, $Res Function(_$GetExpensesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetExpensesImpl implements GetExpenses {
  const _$GetExpensesImpl();

  @override
  String toString() {
    return 'HomeEvent.getExpenses()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetExpensesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isExpanded) expandTotalBalanceCard,
    required TResult Function() getExpenses,
    required TResult Function() loadNextPage,
    required TResult Function(String filterType) changeFilterType,
  }) {
    return getExpenses();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isExpanded)? expandTotalBalanceCard,
    TResult? Function()? getExpenses,
    TResult? Function()? loadNextPage,
    TResult? Function(String filterType)? changeFilterType,
  }) {
    return getExpenses?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isExpanded)? expandTotalBalanceCard,
    TResult Function()? getExpenses,
    TResult Function()? loadNextPage,
    TResult Function(String filterType)? changeFilterType,
    required TResult orElse(),
  }) {
    if (getExpenses != null) {
      return getExpenses();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExpandTotalBalanceCard value)
        expandTotalBalanceCard,
    required TResult Function(GetExpenses value) getExpenses,
    required TResult Function(LoadNextPage value) loadNextPage,
    required TResult Function(ChangeFilterType value) changeFilterType,
  }) {
    return getExpenses(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExpandTotalBalanceCard value)? expandTotalBalanceCard,
    TResult? Function(GetExpenses value)? getExpenses,
    TResult? Function(LoadNextPage value)? loadNextPage,
    TResult? Function(ChangeFilterType value)? changeFilterType,
  }) {
    return getExpenses?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExpandTotalBalanceCard value)? expandTotalBalanceCard,
    TResult Function(GetExpenses value)? getExpenses,
    TResult Function(LoadNextPage value)? loadNextPage,
    TResult Function(ChangeFilterType value)? changeFilterType,
    required TResult orElse(),
  }) {
    if (getExpenses != null) {
      return getExpenses(this);
    }
    return orElse();
  }
}

abstract class GetExpenses implements HomeEvent {
  const factory GetExpenses() = _$GetExpensesImpl;
}

/// @nodoc
abstract class _$$LoadNextPageImplCopyWith<$Res> {
  factory _$$LoadNextPageImplCopyWith(
          _$LoadNextPageImpl value, $Res Function(_$LoadNextPageImpl) then) =
      __$$LoadNextPageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadNextPageImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$LoadNextPageImpl>
    implements _$$LoadNextPageImplCopyWith<$Res> {
  __$$LoadNextPageImplCopyWithImpl(
      _$LoadNextPageImpl _value, $Res Function(_$LoadNextPageImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadNextPageImpl implements LoadNextPage {
  const _$LoadNextPageImpl();

  @override
  String toString() {
    return 'HomeEvent.loadNextPage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadNextPageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isExpanded) expandTotalBalanceCard,
    required TResult Function() getExpenses,
    required TResult Function() loadNextPage,
    required TResult Function(String filterType) changeFilterType,
  }) {
    return loadNextPage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isExpanded)? expandTotalBalanceCard,
    TResult? Function()? getExpenses,
    TResult? Function()? loadNextPage,
    TResult? Function(String filterType)? changeFilterType,
  }) {
    return loadNextPage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isExpanded)? expandTotalBalanceCard,
    TResult Function()? getExpenses,
    TResult Function()? loadNextPage,
    TResult Function(String filterType)? changeFilterType,
    required TResult orElse(),
  }) {
    if (loadNextPage != null) {
      return loadNextPage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExpandTotalBalanceCard value)
        expandTotalBalanceCard,
    required TResult Function(GetExpenses value) getExpenses,
    required TResult Function(LoadNextPage value) loadNextPage,
    required TResult Function(ChangeFilterType value) changeFilterType,
  }) {
    return loadNextPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExpandTotalBalanceCard value)? expandTotalBalanceCard,
    TResult? Function(GetExpenses value)? getExpenses,
    TResult? Function(LoadNextPage value)? loadNextPage,
    TResult? Function(ChangeFilterType value)? changeFilterType,
  }) {
    return loadNextPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExpandTotalBalanceCard value)? expandTotalBalanceCard,
    TResult Function(GetExpenses value)? getExpenses,
    TResult Function(LoadNextPage value)? loadNextPage,
    TResult Function(ChangeFilterType value)? changeFilterType,
    required TResult orElse(),
  }) {
    if (loadNextPage != null) {
      return loadNextPage(this);
    }
    return orElse();
  }
}

abstract class LoadNextPage implements HomeEvent {
  const factory LoadNextPage() = _$LoadNextPageImpl;
}

/// @nodoc
abstract class _$$ChangeFilterTypeImplCopyWith<$Res> {
  factory _$$ChangeFilterTypeImplCopyWith(_$ChangeFilterTypeImpl value,
          $Res Function(_$ChangeFilterTypeImpl) then) =
      __$$ChangeFilterTypeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String filterType});
}

/// @nodoc
class __$$ChangeFilterTypeImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$ChangeFilterTypeImpl>
    implements _$$ChangeFilterTypeImplCopyWith<$Res> {
  __$$ChangeFilterTypeImplCopyWithImpl(_$ChangeFilterTypeImpl _value,
      $Res Function(_$ChangeFilterTypeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filterType = null,
  }) {
    return _then(_$ChangeFilterTypeImpl(
      null == filterType
          ? _value.filterType
          : filterType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangeFilterTypeImpl implements ChangeFilterType {
  const _$ChangeFilterTypeImpl(this.filterType);

  @override
  final String filterType;

  @override
  String toString() {
    return 'HomeEvent.changeFilterType(filterType: $filterType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeFilterTypeImpl &&
            (identical(other.filterType, filterType) ||
                other.filterType == filterType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filterType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeFilterTypeImplCopyWith<_$ChangeFilterTypeImpl> get copyWith =>
      __$$ChangeFilterTypeImplCopyWithImpl<_$ChangeFilterTypeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isExpanded) expandTotalBalanceCard,
    required TResult Function() getExpenses,
    required TResult Function() loadNextPage,
    required TResult Function(String filterType) changeFilterType,
  }) {
    return changeFilterType(filterType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isExpanded)? expandTotalBalanceCard,
    TResult? Function()? getExpenses,
    TResult? Function()? loadNextPage,
    TResult? Function(String filterType)? changeFilterType,
  }) {
    return changeFilterType?.call(filterType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isExpanded)? expandTotalBalanceCard,
    TResult Function()? getExpenses,
    TResult Function()? loadNextPage,
    TResult Function(String filterType)? changeFilterType,
    required TResult orElse(),
  }) {
    if (changeFilterType != null) {
      return changeFilterType(filterType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExpandTotalBalanceCard value)
        expandTotalBalanceCard,
    required TResult Function(GetExpenses value) getExpenses,
    required TResult Function(LoadNextPage value) loadNextPage,
    required TResult Function(ChangeFilterType value) changeFilterType,
  }) {
    return changeFilterType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExpandTotalBalanceCard value)? expandTotalBalanceCard,
    TResult? Function(GetExpenses value)? getExpenses,
    TResult? Function(LoadNextPage value)? loadNextPage,
    TResult? Function(ChangeFilterType value)? changeFilterType,
  }) {
    return changeFilterType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExpandTotalBalanceCard value)? expandTotalBalanceCard,
    TResult Function(GetExpenses value)? getExpenses,
    TResult Function(LoadNextPage value)? loadNextPage,
    TResult Function(ChangeFilterType value)? changeFilterType,
    required TResult orElse(),
  }) {
    if (changeFilterType != null) {
      return changeFilterType(this);
    }
    return orElse();
  }
}

abstract class ChangeFilterType implements HomeEvent {
  const factory ChangeFilterType(final String filterType) =
      _$ChangeFilterTypeImpl;

  String get filterType;
  @JsonKey(ignore: true)
  _$$ChangeFilterTypeImplCopyWith<_$ChangeFilterTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
