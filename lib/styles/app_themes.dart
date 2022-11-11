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

  static final ThemeData lightTheme = ThemeData(
    fontFamily: FontsConstants.gilroyFontFamily,
    colorScheme: ColorSchemes.lightColorScheme,
    scaffoldBackgroundColor: AppColors.white,
    appBarTheme: AppBarTheme(
      elevation: 0,
      titleTextStyle: AppTextStyles.appBarTitleStyle.copyWith(
        fontFamily: FontsConstants.gilroyFontFamily,
      ),
    ),
  );

  static final darkTheme = ThemeData(
    fontFamily: FontsConstants.gilroyFontFamily,
    colorScheme: ColorSchemes.darkColorScheme,
    scaffoldBackgroundColor: AppColors.black,
    appBarTheme: AppBarTheme(
      elevation: 0,
      titleTextStyle: AppTextStyles.appBarTitleStyle.copyWith(
        fontFamily: FontsConstants.gilroyFontFamily,
      ),
    ),
  );
}

extension ThemeUtils on BuildContext {
  ThemeData get theme => Theme.of(this);
}
