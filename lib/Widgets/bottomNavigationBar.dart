import 'package:flutter/material.dart';
import '../functions/hex.dart';

class BottomBar extends StatelessWidget {
  int _selectedIndex = 2;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(16),
        topLeft: Radius.circular(16),
      ),
      child: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        unselectedItemColor: HexColor('#A6A2A4'),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Image.asset(
              'assets/images/home_icon.png',
              width: 21,
            ),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/clock_icon.png',
              width: 22,
            ),
            title: Text('Business'),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/add_icon.png',
              width: 44,
            ),
            title: Text('Busiefness'),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/lan_logo.png',
              width: 22,
            ),
            title: Text('ef'),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/settings_icon.png',
              width: 22,
            ),
            title: Text("hh")),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: (_) {},
      ),
    );
  }
}
