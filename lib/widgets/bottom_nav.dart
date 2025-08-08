import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../screens/home_screen.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentIndex = 0;
  List<Widget> screens = [
    HomeScreen(),
    Center(child: Text('add Screen')),
    Center(child: Text('Shopping Cart')),


    Center(child: Text('Favourite Screen')),

    Center(child: Text('Profile Screen'))
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screens[currentIndex],
        bottomNavigationBar: CurvedNavigationBar(
            color: Colors.black,
            backgroundColor: Colors.transparent,
            onTap: (index) {
              setState(() {
                currentIndex=index;
              });

            },

            items: [
              Icon(
                Icons.home,
                color: Colors.white,
              ),
              Icon(
                Icons.add_to_photos,
                color: Colors.white,
              ),
              Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              Icon(
                Icons.favorite,
                color: Colors.white,
              ),
              Icon(
                Icons.person,
                color: Colors.white,
              )
            ]));
  }
}
