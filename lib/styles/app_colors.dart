import 'package:flutter/material.dart';

abstract class AppColors {
  static const white = Colors.white;
  static const black = Colors.black;
  static const green = Color(0xFF43D86E);
  static const red = Color(0xFFD2382E);
  static const darkGrey = Color(0xFF686868);
}

abstract class ColorSchemes {
  static const ColorScheme lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: AppColors.green,
    onPrimary: AppColors.black,
    secondary: AppColors.green,
    onSecondary: AppColors.black,
    error: AppColors.red,
    onError: AppColors.white,
    background: AppColors.white,
    onBackground: AppColors.black,
    surface: AppColors.white,
    onSurface: AppColors.black,
  );

  static const ColorScheme darkColorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: AppColors.green,
    onPrimary: AppColors.black,
    secondary: AppColors.green,
    onSecondary: AppColors.black,
    error: AppColors.red,
    onError: AppColors.white,
    background: AppColors.black,
    onBackground: AppColors.white,
    surface: AppColors.darkGrey,
    onSurface: AppColors.white,
  );
}
