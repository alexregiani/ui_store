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
          SizedBox(width: 30),
          Center(
            child: ProductCard(
                title: 'chair 1', subtitle: 'description', price: 500.0),
          ),
          SizedBox(width: 30),
          Center(
            child: ProductCard(
                title: 'chair 2', subtitle: 'description', price: 500.0),
          ),
          SizedBox(width: 30),
          Center(
            child: ProductCard(
              title: 'chair 3',
              subtitle: 'description',
              price: 900.0,
            ),
          ),
          SizedBox(width: 30),
        ],
      ),
    );
  }
}
