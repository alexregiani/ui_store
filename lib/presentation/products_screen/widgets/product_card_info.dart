import 'package:flutter/material.dart';

class ProductCardInfo extends StatelessWidget {
  const ProductCardInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        ClipRRect(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(40),
            bottomRight: Radius.circular(40),
          ),
          child: Hero(
            tag: 'chair',
            child: Image.asset('assets/chair1.jpeg'),
          ),
        ),
        const ListTile(
          title: Text('500.0'),
          subtitle: Text('Chair'),
        ),
        const ListTile(
          title: Text('Description'),
          subtitle: Text(
              '"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."'),
        )
      ]),
    );
  }
}
