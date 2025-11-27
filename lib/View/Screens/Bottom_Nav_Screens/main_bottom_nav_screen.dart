import 'package:flutter/material.dart';
import 'package:learn_nova/View/Screens/Bottom_Nav_Screens/book_screen.dart';
import 'package:learn_nova/View/Screens/Bottom_Nav_Screens/home_screen.dart';
import 'package:learn_nova/View/Screens/Bottom_Nav_Screens/vocabulary_screen.dart';
import 'package:learn_nova/View/Screens/Bottom_Nav_Screens/profile_screen.dart';
import 'package:learn_nova/View/Screens/Bottom_Nav_Screens/videos_screen.dart';


class MainBottomNavScreen extends StatefulWidget {
  const MainBottomNavScreen({super.key});

  @override
  State<MainBottomNavScreen> createState() => _MainBottomNavScreenState();
}

class _MainBottomNavScreenState extends State<MainBottomNavScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget>_screens=[

    HomeScreen(),
    VideosScreen(),
    LightBulbScreen(),
    BookScreen(),
    ProfileScreen()
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(15.0),
            topRight: Radius.circular(15.0),
          ),

        ),
        child: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              activeIcon: Icon(Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.play_circle_outline),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.lightbulb_outline),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book_outlined),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: '',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey.shade500,
          onTap: _onItemTapped,

          elevation: 0,

          type: BottomNavigationBarType.fixed,

          backgroundColor: Colors.transparent,

          showSelectedLabels: false,
          showUnselectedLabels: false,


          selectedIconTheme: IconThemeData(size: 24),
          unselectedIconTheme:  IconThemeData(size: 24),

        ),
      ),
    );
  }
}

