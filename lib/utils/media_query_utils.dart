import 'dart:math';

import 'package:flutter/material.dart';

extension MediaQueryUtils on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);

  double get screenWidth => mediaQuery.size.width;

  double get screenHeight => mediaQuery.size.height;

  Orientation get orientation => mediaQuery.orientation;

  double get smallerDimension => min(screenWidth, screenHeight);

  double get devicePixelRatio => mediaQuery.devicePixelRatio;
}
