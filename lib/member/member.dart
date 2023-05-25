import 'package:cms/member/feature/events/presentation/screens/events_screen.dart';

import 'package:cms/styles/colors.dart';
import 'package:flutter/material.dart';

import 'feature/profile/presentation/screens/profile_screen.dart';

class MemberApp extends StatefulWidget {
  const MemberApp({super.key});

  @override
  State<MemberApp> createState() => _MemberAppState();
}

class _MemberAppState extends State<MemberApp> {
  int _currentScreen = 0;

  final List<Widget> _screens = [
    const EventScreen(),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentScreen],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: darkBlue,
        unselectedItemColor: greyText,
        currentIndex: _currentScreen,
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          setState(() {
            _currentScreen = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.event,
            ),
            label: "Events",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: "Profile",
          )
        ],
      ),
    );
  }
}
