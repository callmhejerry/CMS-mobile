import 'package:cms/admin/admin.dart';
import 'package:cms/member/feature/events/blocs/event_bloc.dart';
import 'package:cms/member/feature/events/blocs/event_state.dart';
import 'package:cms/member/feature/events/blocs/events_event.dart';
import 'package:cms/shared/blocs/church_bloc/church_bloc.dart';
import 'package:cms/shared/blocs/church_bloc/church_event.dart';
import 'package:cms/shared/blocs/church_bloc/church_state.dart';
import 'package:cms/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
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
            BlocProvider<EventBloc>(
              create: (context) {
                final eventBloc = EventBloc();
                if (eventBloc.state is InitialState) {
                  eventBloc.add(LoadEvents());
                }
                return eventBloc;
              },
            ),
            BlocProvider<ChurchBloc>(create: (context) {
              final churchBloc = ChurchBloc();
              if (churchBloc.state is! ChurchSuccessState) {
                churchBloc.add(LoadChurches());
              }
              return churchBloc;
            })
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            home: const AdminApp(),
            theme: ThemeData(
              scaffoldBackgroundColor: scaffoldBackgroundColor,
            ),
          ),
        );
      },
    );
  }
}
