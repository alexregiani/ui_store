import 'package:flutter/material.dart';

class ProductCardV2 extends StatelessWidget {
  const ProductCardV2(
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
    return Container(
      width: 200,
      height: 300,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Stack(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    // borderRadius: BorderRadius.circular(60),
                    child: InkWell(
                      onTap: () =>
                          Navigator.pushNamed(context, '/ProductCardInfo'),
                      child: Image.asset(
                        'assets/chair1.jpeg',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ListTile(
                    title: Text(title),
                    subtitle: Text(subtitle),
                  ),
                ),
                ListTile(
                  title: Text('$price'),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Ink(
                  height: 40,
                  width: 40,
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
            ),
          ],
        ),
      ),
    );
  }
}
