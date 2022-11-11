import 'package:clean_ui_session/modules/home/presentation/widgets/banner_widget.dart';
import 'package:clean_ui_session/modules/home/presentation/widgets/best_selling_text.dart';
import 'package:clean_ui_session/modules/home/presentation/widgets/carrot_svg_widget.dart';
import 'package:clean_ui_session/modules/home/presentation/widgets/exclusive_text_widget.dart';
import 'package:clean_ui_session/modules/home/presentation/widgets/location_widget.dart';
import 'package:clean_ui_session/modules/home/presentation/widgets/search_store_text_field.dart';
import 'package:clean_ui_session/utils/media_query_utils.dart';
import 'package:flutter/material.dart';

import '../../widgets/product_card.dart';

class HomeTabletScreen extends StatelessWidget {
  const HomeTabletScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Row(
              children: [
                Column(
                  children: const [
                    CarrotSvgWidget(),
                    LocationTextWidget(),
                  ],
                ),
                const SizedBox(width: 16),
                const Expanded(
                  child: SizedBox(
                    height: 56,
                    child: SearchStoreTextField(),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: context.screenWidth,
                constraints: const BoxConstraints(
                  maxWidth: 750,
                ),
                child: const BannerWidget(),
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      const ExclusiveTextWidget(),
                      Expanded(
                        child: ListView(
                          children: [
                            for (var i = 0; i < 6; i++)
                              const Padding(
                                padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                                child: ProductVerticalCard(
                                  productImage: 'assets/images/pepper.jpg',
                                  productName: 'Pepper',
                                  productPrice: 16.15,
                                ),
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      const BestSellingText(),
                      Expanded(
                        child: ListView(
                          children: [
                            for (var i = 0; i < 6; i++)
                              const Padding(
                                padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                                child: ProductVerticalCard(
                                  productImage: 'assets/images/banana.jpg',
                                  productName: 'Banana',
                                  productPrice: 16.15,
                                ),
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
