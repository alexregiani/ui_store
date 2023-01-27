import 'package:flutter/material.dart';
import 'package:ui_store/presentation/products_screen/widgets/product_card.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          SizedBox(height: 30),
          Center(
            child: ProductCard(),
          ),
          SizedBox(width: 30),
          Center(
            child: ProductCard(),
          )
        ],
      ),
    );
  }
}
