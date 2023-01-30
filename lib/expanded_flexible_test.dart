import 'package:flutter/material.dart';

class ExpandedFlexibleTest extends StatelessWidget {
  const ExpandedFlexibleTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(children: [
        Column(children: [
          Container(
            color: Colors.greenAccent,
            height: 500,
          ),
          Container(
            color: Colors.blue,
            height: 500,
          ),
          Container(
            color: Colors.orangeAccent,
            height: 500,
          )
        ]),
      ]),
    );
  }
}
