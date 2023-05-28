import 'package:cms/admin/feature/admins/blocs/admin_bloc.dart';
import 'package:cms/admin/feature/admins/blocs/admin_event.dart';
import 'package:cms/admin/feature/admins/blocs/admin_state.dart';
import 'package:cms/admin/feature/admins/presentation/Screens/admins_screen.dart';
import 'package:cms/admin/feature/overview/presentation/screens/overview_screen.dart';
import "package:cms/styles/colors.dart";
import "package:flutter/material.dart";
import 'package:flutter_bloc/flutter_bloc.dart';

class AdminApp extends StatefulWidget {
  const AdminApp({super.key});

  @override
  State<AdminApp> createState() => _AdminAppState();
}

class _AdminAppState extends State<AdminApp> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    const AdminScreen(),
    const OverViewScreen(),
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
        )
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
                Icons.admin_panel_settings_rounded,
              ),
              label: "Admins",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.dashboard,
              ),
              label: "Overview",
            )
          ],
        ),
      ),
    );
  }
}
