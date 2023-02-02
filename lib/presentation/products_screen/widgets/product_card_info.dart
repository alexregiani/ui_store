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
      body: Column(children: [
        Stack(children: [
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      fixedSize: Size(50, 50),
                      shape: CircleBorder(),
                      elevation: 5),
                  onPressed: () => print('pressed'),
                  child: Icon(Icons.ac_unit_rounded)),
            ),
          )
        ]),
        const ListTile(
          title: Text('Chair', style: TextStyle(fontSize: 25)),
          subtitle: Text('500.0', style: TextStyle(fontSize: 20)),
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
