import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../styles/app_colors.dart';
import '../styles/app_text_styles.dart';
import 'app_fonts.dart';

class AppThemesViewModel extends Cubit<bool> {
  AppThemesViewModel({required this.prefs}) : super(false);

  final SharedPreferences prefs;

  bool get _isLight {
    return prefs.getBool('is_light_theme') ?? false;
  }

  set isLight(bool value) {
    prefs.setBool('is_light_theme', value);
    emit(value);
  }

  ThemeMode get themeMode => _isLight ? ThemeMode.light : ThemeMode.dark;
}

extension ThemeUtils on BuildContext {
  ThemeData get theme => Theme.of(this);
}

abstract class AppThemes {
  static final lightTheme = ThemeData(
    fontFamily: FontsConstants.gilroyFontFamily,
    colorScheme: ColorSchemes.lightColorScheme,
    scaffoldBackgroundColor: AppColors.white,
  );

  static final darkTheme = ThemeData(
    fontFamily: FontsConstants.gilroyFontFamily,
    colorScheme: ColorSchemes.darkColorScheme,
    scaffoldBackgroundColor: AppColors.black,
  );
}
