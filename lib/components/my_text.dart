import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  const MyText(
    this.text, {
    Key? key,
    required this.style,
    this.overflow,
  }) : super(key: key);

  final String text;
  final TextStyle style;
  final TextOverflow? overflow;

  @override
  Widget build(BuildContext context) {
    return Text(
      text.tr(),
      style: style,
      overflow: overflow,
    );
  }
}
