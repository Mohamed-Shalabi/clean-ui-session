import 'package:clean_ui_session/screens/home_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'styles/app_themes.dart';

// Contents:
// - Localization (NEVER use Directionality)
// - Reusable Components
// - My favourite responsive method
// - Strings, Assets, Colors, Fonts, TextStyles, Themes, Sizes and Spacings
// - How to divide the ui? Why state management?
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final prefs = await SharedPreferences.getInstance();

  runApp(
    BlocProvider(
      create: (_) => AppThemesViewModel(prefs: prefs),
      child: const _EasyLocalizationApp(
        child: _MyApp(),
      ),
    ),
  );
}

class _EasyLocalizationApp extends StatelessWidget {
  const _EasyLocalizationApp({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return EasyLocalization(
      path: 'assets/translations',
      supportedLocales: const [Locale('en'), Locale('ar')],
      startLocale: const Locale('en'),
      child: child,
    );
  }
}

class _MyApp extends StatelessWidget {
  const _MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clean UI Session',
      debugShowCheckedModeBanner: false,
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      home: const HomeScreen(),
    );
  }
}
