import 'package:expense_tracker_lite/utils/helpers/enums.dart';
import 'package:expense_tracker_lite/utils/resources/base_page_route.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

extension NonNullString on String? {
  String orEmpty() {
    if (this == null) {
      return Constants.empty;
    } else {
      return this!;
    }
  }
}

extension NonNullInteger on int? {
  int orZero() {
    if (this == null) {
      return Constants.zero;
    } else {
      return this!;
    }
  }
}

extension Navigation on BuildContext {
  /// Push with custom animated transition
  Future<T?> pushWithTransition<T>(
    Widget page, {
    TransitionType transitionType = TransitionType.slideFromRight,
    bool fullscreenDialog = false,
    bool maintainState = true,
    Object? arguments,
  }) {
    return Navigator.of(this).push<T>(
      BasePageRoute(
        builder: (_) => page,
        settings: RouteSettings(arguments: arguments),
        transitionType: transitionType,
        fullscreenDialog: fullscreenDialog,
      ),
    );
  }

  Future<T?> pushNamed<T>(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushNamed<T>(routeName, arguments: arguments);
  }

  Future<T?> pushReplacementNamed<T, TO>(
    String routeName, {
    Object? arguments,
  }) {
    return Navigator.of(this)
        .pushReplacementNamed<T, TO>(routeName, arguments: arguments);
  }

  Future<T?> pushNamedAndRemoveUntil<T>(
    String routeName, {
    Object? arguments,
    required RoutePredicate predicate,
  }) {
    return Navigator.of(this)
        .pushNamedAndRemoveUntil<T>(routeName, predicate, arguments: arguments);
  }

  void pop<T extends Object?>([T? result]) => Navigator.of(this).pop(result);
}

extension EmailValidator on String {
  bool isValidEmail() {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this);
  }
}
