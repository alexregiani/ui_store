import 'package:flutter/material.dart';

class ItemContainer extends StatelessWidget {
  const ItemContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 200,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Image.asset('assets/chair1.jpeg'),
      ),
    );
  }
}
