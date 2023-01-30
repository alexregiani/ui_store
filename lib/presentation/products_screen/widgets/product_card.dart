import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.price})
      : super(key: key);

  final String title;
  final String subtitle;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: 200,
        height: 300,
        child: InkWell(
          onTap: () => Navigator.pushNamed(context, '/ProductCardInfo'),
          child: Card(
            // clipBehavior: Clip.antiAliasWithSaveLayer,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            elevation: 10,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: FittedBox(
                alignment: Alignment.topCenter,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(60),
                  child: Image.asset(
                    'assets/chair1.jpeg',
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      Positioned(
        top: 172,
        right: 45,
        width: 150,
        child: Column(
          children: [
            ListTile(
              title: Text(title),
              subtitle: Text(subtitle),
            ),
            ListTile(
              title: Text('$price'),
            ),
          ],
        ),
      ),
      Transform(
        transform: Matrix4.translationValues(150, 250, 0),
        child: Ink(
          decoration: const ShapeDecoration(
            shape: CircleBorder(),
            color: Colors.blue,
          ),
          child: const IconButton(
            onPressed: null,
            icon: Icon(
              Icons.add,
            ),
          ),
        ),
      ),
    ]);
  }
}
