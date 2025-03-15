import 'package:flutter/material.dart';

extension MediaQueryExtension on BuildContext {
  double widthFraction(double fraction) {
    assert(fraction >= 0.0 && fraction <= 1.0,
        'Fraction must be between 0.0 and 1.0');
    return MediaQuery.of(this).size.width * fraction;
  }

  double heightFraction(double fraction) {
    assert(fraction >= 0.0 && fraction <= 1.0,
        'Fraction must be between 0.0 and 1.0');
    return MediaQuery.of(this).size.height * fraction;
  }
}
