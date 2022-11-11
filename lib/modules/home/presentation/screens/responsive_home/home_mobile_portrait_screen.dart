import 'package:flutter/material.dart';

import '../../widgets/banner_widget.dart';
import '../../widgets/best_selling_text.dart';
import '../../widgets/carrot_svg_widget.dart';
import '../../widgets/exclusive_text_widget.dart';
import '../../widgets/location_widget.dart';
import '../../widgets/product_card.dart';
import '../../widgets/search_store_text_field.dart';

class HomeMobilePortraitScreen extends StatelessWidget {
  const HomeMobilePortraitScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(height: 32),
          const CarrotSvgWidget(),
          const SizedBox(height: 16),
          const LocationTextWidget(),
          const SizedBox(height: 16),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.0),
            child: SizedBox(
              height: 52,
              child: SearchStoreTextField(),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: BannerWidget(),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: ExclusiveTextWidget(),
          ),
          SizedBox(
            height: 260,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 16),
              children: [
                for (var i = 0; i < 6; i++)
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 8, 16, 8),
                    child: ProductHorizontalCard(
                      productImage: 'assets/images/banana.jpg',
                      productName: 'Banana',
                      productPrice: 4.99,
                    ),
                  )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: BestSellingText(),
          ),
          SizedBox(
            height: 260,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 16),
              children: [
                for (var i = 0; i < 6; i++)
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 8, 16, 8),
                    child: ProductHorizontalCard(
                      productImage: 'assets/images/pepper.jpg',
                      productName: 'Pepper',
                      productPrice: 16.15,
                    ),
                  )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
