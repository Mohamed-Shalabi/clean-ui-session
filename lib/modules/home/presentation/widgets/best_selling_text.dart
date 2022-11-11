import 'package:flutter/material.dart';

import '../../../../components/my_text.dart';

class BestSellingText extends StatelessWidget {
  const BestSellingText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MyText(
      'Best Selling',
      style: TextStyle(
        color: Colors.black,
        fontSize: 24,
      ),
    );
  }
}
