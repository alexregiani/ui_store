import 'package:flutter/material.dart';
import 'package:ui_store/presentation/products_screen/widgets/product_card_v2.dart';

class ChairScreen extends StatelessWidget {
  const ChairScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chairs'),
      ),
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          Align(
            alignment: Alignment.topLeft,
            child: ProductCardV2(
                image: 'assets/chair1.jpeg',
                title: 'chair 1',
                subtitle: 'description',
                price: 500.0),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: ProductCardV2(
                image: 'assets/chair1.jpeg',
                title: 'chair 2',
                subtitle: 'description',
                price: 500.0),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: ProductCardV2(
              image: 'assets/chair1.jpeg',
              title: 'chair 3',
              subtitle: 'description',
              price: 900.0,
            ),
          ),
        ],
      ),
    );
  }
}
