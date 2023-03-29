import "package:flutter/material.dart";
import 'package:ghostrun/screens/page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 1;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromARGB(115, 91, 86, 86),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: _selectedIndex == 0
                  ? Image.asset("assets/icons/feedOn.png")
                  : Image.asset("assets/icons/feed.png"),
              label: 'Feeds',
            ),
            BottomNavigationBarItem(
              icon: _selectedIndex == 1
                  ? Image.asset("assets/icons/newOn.png")
                  : Image.asset("assets/icons/new.png"),
              label: 'Nouvelle course',
            ),
            BottomNavigationBarItem(
              icon: _selectedIndex == 2
                  ? Image.asset("assets/icons/profileOn.png")
                  : Image.asset("assets/icons/profile.png"),
              label: 'Profil',
            ),
          ],
          onTap: _onItemTapped,
          currentIndex: _selectedIndex,
        ),
        body: page(_selectedIndex));
  }
}
