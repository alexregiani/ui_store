import 'package:flutter/material.dart';
import 'package:ui_store/presentation/products_screen/widgets/item_container.dart';

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
            child: ItemContainer(),
          ),
          SizedBox(width: 30),
          Center(
            child: ItemContainer(),
          )
        ],
      ),
    );
  }
}
