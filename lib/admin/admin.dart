import 'package:cms/admin/feature/admins/blocs/admin_bloc.dart';
import 'package:cms/admin/feature/admins/blocs/admin_event.dart';
import 'package:cms/admin/feature/admins/blocs/admin_state.dart';
import 'package:cms/admin/feature/admins/presentation/Screens/admins_screen.dart';
import 'package:cms/admin/feature/overview/blocs/overview_event.dart';
import 'package:cms/admin/feature/overview/presentation/screens/overview_screen.dart';
import 'package:cms/admin/feature/profile/presentation/Screens/profile_screen.dart';
import "package:cms/styles/colors.dart";
import "package:flutter/material.dart";
import 'package:flutter_bloc/flutter_bloc.dart';

import 'feature/overview/blocs/overview_bloc.dart';
import 'feature/overview/blocs/overview_state.dart';

class AdminApp extends StatefulWidget {
  const AdminApp({super.key});

  @override
  State<AdminApp> createState() => _AdminAppState();
}

class _AdminAppState extends State<AdminApp> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    const OverViewScreen(),
    const AdminScreen(),
    const AdminProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) {
            final adminBloc = AdminBloc();
            if (adminBloc.state is AdminInitialState) {
              adminBloc.add(LoadAdmins());
            }
            return adminBloc;
          },
        ),
        BlocProvider(create: (context) {
          final overviewBloc = OverviewBloc();
          if (overviewBloc.state is OverviewInitialState) {
            overviewBloc.add(LoadStats());
          }
          return overviewBloc;
        })
      ],
      child: Scaffold(
        body: _screens[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          elevation: 0,
          selectedItemColor: darkBlue,
          currentIndex: _currentIndex,
          onTap: (value) {
            setState(() {
              _currentIndex = value;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.dashboard,
              ),
              label: "Overview",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.admin_panel_settings_rounded,
              ),
              label: "Admins",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}
