import 'package:flutter/material.dart';
import 'package:ui_store/presentation/products_screen/widgets/item_container.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [Center(child: ItemContainer())],
    ));
  }
}
