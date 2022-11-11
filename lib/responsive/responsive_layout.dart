import 'package:clean_ui_session/responsive/constants.dart';
import 'package:clean_ui_session/utils/media_query_utils.dart';
import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({
    Key? key,
    required Widget defaultScreen,
    this.mobileLandscapeScreen,
    this.tabletScreen,
  })  : _mobilePortraitScreen = defaultScreen,
        super(key: key);

  /// Used in mobile portrait Screens
  /// And used in other screens if they are not provided
  final Widget _mobilePortraitScreen;
  final Widget? mobileLandscapeScreen;
  final Widget? tabletScreen;

  @override
  Widget build(BuildContext context) {
    if (tabletScreen == null && mobileLandscapeScreen == null) {
      return SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: _mobilePortraitScreen,
      );
    }

    final isMobilePortrait = context.screenWidth < ScreensSizes.mobileMaxWidth;
    if (isMobilePortrait) {
      return SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: _mobilePortraitScreen,
      );
    }

    final isMobileLandscape = context.orientation == Orientation.landscape &&
        context.screenHeight < ScreensSizes.mobileMaxWidth;
    if (isMobileLandscape) {
      return SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: mobileLandscapeScreen ?? _mobilePortraitScreen,
      );
    }

    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: tabletScreen ?? _mobilePortraitScreen,
    );
  }
}
