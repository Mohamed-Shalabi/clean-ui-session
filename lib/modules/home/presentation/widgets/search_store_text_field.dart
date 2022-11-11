import 'package:flutter/material.dart';

import '../../../../components/my_text_field.dart';

class SearchStoreTextField extends StatelessWidget {
  const SearchStoreTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MyTextField(
      hintText: 'Search Store',
      prefixIcon: Padding(
        padding: EdgeInsets.only(left: 16.0, right: 8),
        child: Icon(
          Icons.search,
          color: Colors.black,
        ),
      ),
    );
  }
}
