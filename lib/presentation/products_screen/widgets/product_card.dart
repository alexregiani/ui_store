import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
      width: 200,
      height: 300,
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: FittedBox(
            alignment: Alignment.topCenter,
            fit: BoxFit.contain,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(500),
                  ),
                  child: Image.asset(
                    'assets/chair1.jpeg',
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
