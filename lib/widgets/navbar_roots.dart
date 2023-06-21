import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:gomodiarect/screens/home_screen.dart';

import '../screens/camera_screen.dart';

class NavBarRoots extends StatefulWidget {
  @override
  State<NavBarRoots> createState() => _NavBarRootState();
}

class _NavBarRootState extends State<NavBarRoots> {

  int _selectedIndex = 0;
  final _screens =[
    // Home Screen
    HomeScreen(),
    // Messages Screen
    ImagePickerApp(),
    // Schedule Screen
    Container(),
    //Settings Screen
    Container(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screens[_selectedIndex],
      bottomNavigationBar: Container(
        height: 80,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xFF7165D6),
          unselectedItemColor: Colors.black26,
          selectedLabelStyle: TextStyle (
            fontWeight:  FontWeight.bold,
            fontSize: 18,
          ), //TextStyle
          currentIndex: _selectedIndex,
          onTap: (index){
            setState(() {
              _selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: "Home",
            ),//BottomNavigationBarItem
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.camera),
              label: "Upload",
            ),//BottomNavigationBarItem
            BottomNavigationBarItem(
              icon: Icon(Icons.edit_document),
              label: "Reports",
            ),//BottomNavigationBarItem
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings",
            ),//BottomNavigationBarItem
          ],
        ),//BottomNavigationBarItem
      ),
    );//Scaffold
  }
}