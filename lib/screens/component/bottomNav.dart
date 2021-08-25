import 'package:flutter/material.dart';
import 'package:htoh/config/palette.dart';
import 'package:htoh/screens/message_screen/messageHome.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = [
    MessageHome(),
    Text("Friends"),
    Text("Profile"),
  ];
  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.message_rounded),
            label: "Messages",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_alt_rounded),
            label: "Friends",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_rounded),
            label: "Profile",
          ),
        ],
        selectedFontSize: 15.0,
        selectedItemColor: Palette.secondaryColor,
        unselectedFontSize: 12.0,
        unselectedItemColor: Palette.grayColor,
        onTap: onItemTapped,
        currentIndex: _selectedIndex,
      ),
    );
  }
}
