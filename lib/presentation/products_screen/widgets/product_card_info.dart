import 'package:flutter/material.dart';

class ProductCardInfo extends StatelessWidget {
  const ProductCardInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text('Chair'),
        foregroundColor: Colors.blueAccent,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(children: [
        ClipRRect(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(40),
            bottomRight: Radius.circular(40),
          ),
          child: Image.asset('assets/chair1.jpeg'),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  fixedSize: Size(50, 50),
                  shape: CircleBorder(),
                  elevation: 5),
              onPressed: () => print('pressed'),
              child: Icon(Icons.ac_unit_rounded)),
        )
      ]),
    );
  }
}
