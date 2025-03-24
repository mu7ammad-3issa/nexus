import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

extension Routes on BuildContext {
  /// Navigates to a new route with an optional custom page transition.
  Future<T?> navigate<T>(Widget newRoute, {PageTransitionType? type}) async {
    if (type != null) {
      return await Navigator.push<T>(
        this,
        PageTransition(
          type: type,
          child: newRoute,
        ),
      );
    }
    return await Navigator.push<T>(
      this,
      MaterialPageRoute(
        builder: (context) => newRoute,
      ),
    );
  }

  /// Navigates to a new route and removes all previous routes from the stack.
  Future<T?> navigateAndRemoveAll<T>(Widget newRoute,
      {PageTransitionType? type}) async {
    if (type != null) {
      return await Navigator.pushAndRemoveUntil<T>(
        this,
        PageTransition(
          type: type,
          child: newRoute,
        ),
        (route) => false,
      );
    }
    return await Navigator.pushAndRemoveUntil<T>(
      this,
      MaterialPageRoute(
        builder: (context) => newRoute,
      ),
      (route) => false,
    );
  }

  /// Replaces the current route with a new route and optionally uses a custom page transition.
  Future<T?> replaceRoute<T>(Widget newRoute,
      {PageTransitionType? type}) async {
    if (type != null) {
      return await Navigator.pushReplacement<T, Object?>(
        this,
        PageTransition(
          type: type,
          child: newRoute,
        ),
      );
    }
    return await Navigator.pushReplacement<T, Object?>(
      this,
      MaterialPageRoute(
        builder: (context) => newRoute,
      ),
    );
  }

  void pop<T>(BuildContext context, [T? result]) {
    Navigator.pop<T>(context, result);
  }
}
