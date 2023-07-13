import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:gomodiarect/screens/home_screen.dart';
import 'package:gomodiarect/screens/profile_page.dart';

import '../screens/camera_screen.dart';
import '../screens/reports_screen.dart';

class NavBarRoots extends StatefulWidget {
  @override
  State<NavBarRoots> createState() => _NavBarRootState();
}

class _NavBarRootState extends State<NavBarRoots> {

  int _selectedIndex = 0;
  final _screens =[
    // Home Screen
    AppointmentScreen(),
    // Messages Screen
    ImagePickerApp(),
    // Schedule Screen
    Reports(),
    //Settings Screen
    //Container(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screens[_selectedIndex],
      bottomNavigationBar: Container(
        height: 80,
        child: CurvedNavigationBar(
          backgroundColor: Colors.white,
          color: Colors.deepPurple,
          animationDuration: Duration(milliseconds: 200),
         /* type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xFF7165D6),
          unselectedItemColor: Colors.black26,
          selectedLabelStyle: TextStyle (
            fontWeight:  FontWeight.bold,
            fontSize: 18,
          ), //TextStyle
          currentIndex: _selectedIndex,
          */
          onTap: (index){
            setState(() {
              _selectedIndex = index;
            });
          },
          items: [
            Icon(
              Icons.home,
              color: Colors.white,
            ),//BottomNavigationBarItem
            Icon(
              Icons.camera,
              color: Colors.white,
            ),//BottomNavigationBarItem
            Icon(
              Icons.edit_document,
              color: Colors.white,
            ),//BottomNavigationBarItem
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.settings),
            //   label: "Settings",
            // ),//BottomNavigationBarItem
          ],
        ),//BottomNavigationBarItem
      ),
    );//Scaffold
  }
}