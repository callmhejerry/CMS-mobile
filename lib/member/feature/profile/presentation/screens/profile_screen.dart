import 'package:cms/shared/authentication/blocs/auth_bloc.dart';
import 'package:cms/shared/authentication/blocs/auth_event.dart';
import 'package:cms/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: scaffoldBackgroundColor,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              final authBloc = context.read<AuthBloc>();
              authBloc.add(Logout());
            },
            icon: const Icon(
              Icons.logout,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: const Center(
        child: Text("Profile Screen"),
      ),
    );
  }
}
