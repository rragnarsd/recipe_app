import 'package:flutter/material.dart';
import 'package:recipe_api/screens/category_screen.dart';
import 'package:recipe_api/screens/home_widgets.dart';
import 'package:recipe_api/screens/profile_screen.dart';
import 'package:recipe_api/screens/saved_screen.dart';
import 'package:unicons/unicons.dart';

class CustomNavBar extends StatefulWidget {
  const CustomNavBar({Key? key}) : super(key: key);

  @override
  _CustomNavBarState createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar>
    with SingleTickerProviderStateMixin {
  int selectedIndex = 0;

  late Animation<double> animation;
  late AnimationController animController;

  @override
  void initState() {
    super.initState();
    animController = AnimationController(
      reverseDuration: Duration(milliseconds: 700),
      duration: Duration(milliseconds: 800),
      vsync: this,
    );
    animation = Tween<double>(
      begin: 0.9,
      end: 1.05,
    ).animate(animController)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          animController.velocity;
        } else if (status == AnimationStatus.dismissed) {
          animController.forward();
        }
      });
    animController.forward();
  }

  @override
  void dispose() {
    animController.dispose();
    super.dispose();
  }

  @override
  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  static List<Widget> pages = [
    const HomeWidgets(),
    const CategoryScreen(),
    const SavedScreen(),
    const ProfileScreen(),
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
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Transform.scale(
              scale: animation.value,
              child: Icon(UniconsLine.home),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Transform.scale(
              scale: animation.value,
              child: Icon(UniconsLine.apps),
            ),
            label: 'Category',
          ),
          BottomNavigationBarItem(
            icon: Transform.scale(
              scale: animation.value,
              child: Icon(UniconsLine.bookmark),
            ),
            label: 'Saved',
          ),
          BottomNavigationBarItem(
            icon: Transform.scale(
              scale: animation.value,
              child: Icon(UniconsLine.user),
            ),
            label: 'Profile',
          ),
        ],
      ),
      body: pages.elementAt(selectedIndex),
    );
  }
}
