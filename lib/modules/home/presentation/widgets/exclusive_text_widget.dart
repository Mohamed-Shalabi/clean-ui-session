import 'package:flutter/material.dart';

import '../../../../components/my_text.dart';

class ExclusiveTextWidget extends StatelessWidget {
  const ExclusiveTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MyText(
      'Exclusive Offers',
      style: TextStyle(color: Colors.black, fontSize: 24),
    );
  }
}
