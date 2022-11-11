import 'package:flutter/material.dart';

import '../../../../components/my_text.dart';

class LocationTextWidget extends StatelessWidget {
  const LocationTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Icon(Icons.location_on_rounded),
        MyText(
          'Mansoura, Egypt',
          style: TextStyle(fontSize: 18),
        ),
      ],
    );
  }
}
