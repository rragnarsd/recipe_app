import 'package:flutter/material.dart';
import 'package:recipe_app/screens/screens.dart';
import 'package:sizer/sizer.dart';
import 'package:unicons/unicons.dart';

class CustomNavBar extends StatefulWidget {
  const CustomNavBar({Key? key}) : super(key: key);

  @override
  _CustomNavBarState createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar>
    with SingleTickerProviderStateMixin {
  int selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  static List<Widget> pages = [
    const HomeScreen(),
    const CategoryScreen(),
    const SavedScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        elevation: 4.0,
        currentIndex: selectedIndex,
        onTap: _onItemTapped,
        showSelectedLabels: true,
        selectedFontSize: 10.0.sp,
        iconSize: 18.sp,
        showUnselectedLabels: true,
        selectedItemColor: Theme.of(context).iconTheme.color,
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
          BottomNavigationBarItem(
            icon: Icon(UniconsLine.user),
            label: 'Profile',
          ),
        ],
      ),
      body: pages.elementAt(selectedIndex),
    );
  }
}
