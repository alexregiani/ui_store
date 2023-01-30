import 'package:flutter/material.dart';

class ProductCardInfo extends StatelessWidget {
  const ProductCardInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [Image.asset('assets/chair1.jpeg')]),
    );
  }
}
