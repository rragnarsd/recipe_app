import 'package:flutter/material.dart';
import 'package:recipe_api/screens/category_screen.dart';
import 'package:recipe_api/screens/home_widgets.dart';
import 'package:recipe_api/screens/saved_screen.dart';
import 'package:unicons/unicons.dart';

class CustomNavBar extends StatefulWidget {
  const CustomNavBar({Key? key}) : super(key: key);

  @override
  _CustomNavBarState createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  int selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  static List<Widget> pages = [
    const HomeWidgets(),
    const CategoryScreen(),
    const SavedScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey.shade300,
        elevation: 0.0,
        currentIndex: selectedIndex,
        onTap: _onItemTapped,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: Colors.grey.shade900,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(UniconsLine.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(UniconsLine.apps),
            label: 'Category',
          ),
          BottomNavigationBarItem(
            icon: Icon(UniconsLine.bookmark),
            label: 'Saved',
          ),
        ],
      ),
      body: pages.elementAt(selectedIndex),
    );
  }
}
