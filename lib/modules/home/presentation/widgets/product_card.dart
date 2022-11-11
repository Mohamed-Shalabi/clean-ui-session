import 'package:flutter/material.dart';

import '../../../../components/my_card.dart';
import '../../../../components/my_text.dart';

class ProductHorizontalCard extends StatelessWidget {
  const ProductHorizontalCard({
    Key? key,
    required this.productImage,
    required this.productName,
    required this.productPrice,
  }) : super(key: key);

  final String productImage;
  final String productName;
  final double productPrice;

  @override
  Widget build(BuildContext context) {
    return MyCard(
      width: 180,
      child: Column(
        children: [
          SizedBox(
            height: 120,
            child: _ProductImage(productImage: productImage),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: _ProductNameText(
                productName: productName,
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
            child: Row(
              children: [
                _ProductPriceText(productPrice: productPrice),
                const Spacer(),
                const AddProductToCartButton()
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ProductVerticalCard extends StatelessWidget {
  const ProductVerticalCard({
    Key? key,
    required this.productImage,
    required this.productName,
    required this.productPrice,
  }) : super(key: key);

  final String productImage;
  final String productName;
  final double productPrice;

  @override
  Widget build(BuildContext context) {
    return MyCard(
      height: 120,
      child: Row(
        children: [
          SizedBox(
            height: 120,
            child: _ProductImage(productImage: productImage),
          ),
          Expanded(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: _ProductNameText(
                      productName: productName,
                    ),
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                  child: Row(
                    children: [
                      _ProductPriceText(productPrice: productPrice),
                      const Spacer(),
                      const AddProductToCartButton()
                    ],
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

class _ProductImage extends StatelessWidget {
  const _ProductImage({Key? key, required this.productImage}) : super(key: key);

  final String productImage;

  @override
  Widget build(BuildContext context) {
    return Image.asset(productImage);
  }
}

class _ProductNameText extends StatelessWidget {
  const _ProductNameText({Key? key, required this.productName})
      : super(key: key);

  final String productName;

  @override
  Widget build(BuildContext context) {
    return MyText(
      productName,
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

class _ProductPriceText extends StatelessWidget {
  const _ProductPriceText({Key? key, required this.productPrice})
      : super(key: key);

  final double productPrice;

  @override
  Widget build(BuildContext context) {
    return MyText(
      '\$$productPrice',
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

class AddProductToCartButton extends StatelessWidget {
  const AddProductToCartButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 46,
      height: 46,
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(16),
      ),
      child: const Icon(
        Icons.add,
        color: Colors.white,
        size: 36,
      ),
    );
  }
}
