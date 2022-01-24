// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:hr_app/Screens/homePage.dart';
import 'package:hr_app/Screens/notificationPage.dart';
import 'package:hr_app/Screens/profilePage.dart';
import 'package:hr_app/Screens/settingsPage.dart';

import 'package:hr_app/Utilities/appTheme.dart';

class dashboard extends StatefulWidget {
  const dashboard({Key? key}) : super(key: key);

  @override
  _dashboardState createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  int _selectedIndex = 0;
  String db_title = 'Dashboard';
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      print(_selectedIndex);
      switch (_selectedIndex) {
        case 1:
          db_title = 'Notification';
          break;
        case 2:
          db_title = 'Settings';
          break;
        case 3:
          db_title = 'Profile';
          break;
        default:
          db_title = 'Dashboard';
          break;
      }
    });
  }

  static const List<Widget> _pages = <Widget>[
    homePage(),
    notificationPage(),
    settingPage(),
    profilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text(db_title)),
        backgroundColor: purpleHaze,
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          selectedItemColor: mediumBlue,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: false,
          onTap: _onItemTapped,
          currentIndex: _selectedIndex,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Notification',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Setting',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined),
              label: 'Profile',
            ),
          ],
        ),
        body: IndexedStack(
          index: _selectedIndex,
          children: _pages,
        ),
      ),
    );
  }
}
