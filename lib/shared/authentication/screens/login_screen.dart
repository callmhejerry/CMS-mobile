import 'package:cms/member/feature/authentication/presentation/screens/member_login.dart';
import 'package:cms/shared/authentication/blocs/auth_bloc.dart';
import 'package:cms/shared/authentication/blocs/auth_event.dart';
import 'package:cms/styles/colors.dart';
import 'package:cms/styles/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../admin/feature/authentication/presentation/screens/admin_login_screen.dart';

class AuthController extends StatelessWidget {
  const AuthController({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: ScreenPadding.screenPaddingWidth,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 40.h,
              ),
              const Text(
                "Log in",
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  const Text(
                    "Are you an admin?",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) {
                          return const AdminLoginScreen();
                        },
                      ));
                    },
                    child: const Text(
                      "Log in",
                      style: TextStyle(
                        fontSize: 16,
                        color: darkBlue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  const Text(
                    "Are you a member?",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) {
                          return const MemberLoginScreen();
                        },
                      ));
                    },
                    child: const Text(
                      "Log in",
                      style: TextStyle(
                        fontSize: 16,
                        color: darkBlue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40.h),
              ElevatedButton(
                onPressed: () {
                  final authBloc = context.read<AuthBloc>();
                  authBloc.add(LoginGuest());
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: darkBlue,
                  elevation: 0,
                  fixedSize: const Size(0, 50),
                ),
                child: const Text(
                  "Log in as a guest",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
