import 'package:cms/shared/authentication/blocs/auth_bloc.dart';
import 'package:cms/shared/authentication/blocs/auth_event.dart';
import 'package:cms/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AdminProfileScreen extends StatelessWidget {
  const AdminProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: scaffoldBackgroundColor,
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
        child: Text("Profile screen"),
      ),
    );
  }
}
