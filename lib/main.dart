import 'package:cms/admin/admin.dart';
import 'package:cms/member/feature/events/blocs/event_bloc.dart';
import 'package:cms/member/feature/events/blocs/event_state.dart';
import 'package:cms/member/feature/events/blocs/events_event.dart';
import 'package:cms/member/member.dart';
import 'package:cms/shared/authentication/blocs/auth_bloc.dart';
import 'package:cms/shared/authentication/blocs/auth_event.dart';
import 'package:cms/shared/authentication/blocs/auth_state.dart';
import 'package:cms/shared/blocs/church_bloc/church_bloc.dart';
import 'package:cms/shared/blocs/church_bloc/church_event.dart';
import 'package:cms/shared/blocs/church_bloc/church_state.dart';
import 'package:cms/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'shared/authentication/screens/login_screen.dart';
import 'shared/authentication/services/local_auth_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocalAuthService.init();
  runApp(const Cms());
}

class Cms extends StatelessWidget {
  const Cms({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(395, 853),
      minTextAdapt: true,
      builder: (context, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) {
              final authBloc = AuthBloc();
              if (authBloc.state is LoggedOutState) {
                authBloc.add(LoadUser());
              }
              return authBloc;
            }),
            BlocProvider<EventBloc>(
              create: (context) {
                final eventBloc = EventBloc();
                if (eventBloc.state is InitialState) {
                  eventBloc.add(LoadEvents());
                }
                return eventBloc;
              },
            ),
            BlocProvider<ChurchBloc>(
              create: (context) {
                final churchBloc = ChurchBloc();
                if (churchBloc.state is! ChurchSuccessState) {
                  churchBloc.add(LoadChurches());
                }
                return churchBloc;
              },
              lazy: false,
            )
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            home: BlocBuilder<AuthBloc, AuthState>(
              builder: (BuildContext context, state) {
                if (state is AdminAuthState) {
                  return const AdminApp();
                } else if (state is MemberAuthState) {
                  return const MemberApp();
                } else if (state is GuestAuthState) {
                  return const MemberApp();
                }
                return const AuthController();
              },
            ),
            theme: ThemeData(
              scaffoldBackgroundColor: scaffoldBackgroundColor,
            ),
          ),
        );
      },
    );
  }
}
