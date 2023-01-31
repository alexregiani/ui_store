import 'package:flutter/material.dart';
import 'package:ui_store/presentation/products_screen/chair_screen.dart';
import 'package:ui_store/presentation/products_screen/table_screen.dart';

class RootNavBar extends StatefulWidget {
  const RootNavBar({Key? key}) : super(key: key);

  @override
  State<RootNavBar> createState() => _RootNavBarState();
}

class _RootNavBarState extends State<RootNavBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              label: 'Chair',
              icon: Icon(Icons.account_box),
            ),
            BottomNavigationBarItem(
              label: 'Table',
              icon: Icon(Icons.add),
            ),
            BottomNavigationBarItem(
              label: 'Sofa',
              icon: Icon(Icons.abc_rounded),
            ),
            BottomNavigationBarItem(
              label: 'Bed',
              icon: Icon(Icons.bed),
            ),
          ]),
      body: IndexedStack(index: _currentIndex, children: [
        ChairScreen(),
        TableScreen(),
      ]),
    );
  }
}
