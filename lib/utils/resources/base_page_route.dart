import 'dart:io';

import 'package:expense_tracker_lite/utils/helpers/enums.dart';
import 'package:flutter/material.dart';

class BasePageRoute<T> extends PageRoute<T> {
  final WidgetBuilder builder;
  final TransitionType? transitionType;
  final bool maintainPageState;
  final bool fullscreenDialog;

  BasePageRoute({
    required this.builder,
    this.transitionType, // ✅ بقى اختياري
    RouteSettings? settings,
    this.maintainPageState = true,
    this.fullscreenDialog = false,
  }) : super(settings: settings, fullscreenDialog: fullscreenDialog);

  @override
  Duration get transitionDuration => Platform.isIOS
      ? const Duration(milliseconds: 400)
      : const Duration(milliseconds: 350);

  @override
  bool get opaque => true;

  @override
  bool get barrierDismissible => false;

  @override
  Color? get barrierColor => null;

  @override
  String? get barrierLabel => null;

  @override
  bool get maintainState => maintainPageState;

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    return builder(context);
  }

  @override
  Widget buildTransitions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    // ✅ لو مفيش transitionType → رجّع الأنيميشن الافتراضي
    if (transitionType == null) {
      return Platform.isIOS
          ? CupertinoPageTransitionsBuilder().buildTransitions(
              this,
              context,
              animation,
              secondaryAnimation,
              child,
            )
          : FadeTransition(opacity: animation, child: child);
    }

    // ✅ لو transitionType موجود → نطبق الأنيميشن المطلوب
    switch (transitionType!) {
      case TransitionType.slideFromRight:
        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(1.0, 0.0),
            end: Offset.zero,
          ).animate(animation),
          child: child,
        );
      case TransitionType.slideFromBottom:
        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(0.0, 1.0),
            end: Offset.zero,
          ).animate(animation),
          child: child,
        );
      case TransitionType.fade:
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      case TransitionType.scale:
        return ScaleTransition(
          scale: animation,
          child: child,
        );
    }
  }
}
