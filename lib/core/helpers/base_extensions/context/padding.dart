import 'package:flutter/cupertino.dart';

extension AppPadding on BuildContext {
  /// Applies equal padding on all sides.
  EdgeInsets all(double value) => EdgeInsets.all(value);

  /// Applies horizontal padding (left and right).
  EdgeInsets horizontal(double value) =>
      EdgeInsets.symmetric(horizontal: value);

  /// Applies vertical padding (top and bottom).
  EdgeInsets vertical(double value) => EdgeInsets.symmetric(vertical: value);

  /// Applies padding only to the top.
  EdgeInsets top(double value) => EdgeInsets.only(top: value);

  /// Applies padding only to the bottom.
  EdgeInsets bottom(double value) => EdgeInsets.only(bottom: value);

  /// Applies padding only to the left.
  EdgeInsets left(double value) => EdgeInsets.only(left: value);

  /// Applies padding only to the right.
  EdgeInsets right(double value) => EdgeInsets.only(right: value);

  /// Applies padding to specific sides.
  EdgeInsets only({
    double top = 0,
    double bottom = 0,
    double left = 0,
    double right = 0,
  }) =>
      EdgeInsets.only(
        top: top,
        bottom: bottom,
        left: left,
        right: right,
      );

  /// Applies horizontal and vertical padding.
  EdgeInsets symmetric({
    double horizontal = 0,
    double vertical = 0,
  }) =>
      EdgeInsets.symmetric(
        horizontal: horizontal,
        vertical: vertical,
      );
}
