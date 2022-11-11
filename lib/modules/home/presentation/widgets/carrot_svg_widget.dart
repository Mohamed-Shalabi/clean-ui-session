import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CarrotSvgWidget extends StatelessWidget {
  const CarrotSvgWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/svg/carrot.svg',
    );
  }
}
