import 'package:clean_ui_session/responsive/responsive_layout.dart';
import 'package:flutter/material.dart';

import 'home_mobile_portrait_screen.dart';
import 'home_tablet_screen.dart';

// Steps:
// - Formatting
// - Constants
// - Directionality
// - Global Components: Card, TextField, Text
// - Local components (Concept of positioning and drawing): ProductCard (With AddButton), Titles
// - Responsive
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      defaultScreen: HomeMobilePortraitScreen(),
      tabletScreen: HomeTabletScreen(),
    );
  }
}
