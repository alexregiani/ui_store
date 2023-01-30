import 'package:flutter/material.dart';
import 'package:ui_store/presentation/products_screen/widgets/product_card_info.dart';
import 'package:ui_store/presentation/products_screen/widgets/product_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: <String, WidgetBuilder>{
          '/root': (BuildContext context) => const ProductScreen(),
          'ProductCardInfo': (BuildContext context) => const ProductCardInfo()
        },
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const ProductScreen());
  }
}
