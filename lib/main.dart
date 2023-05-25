import 'package:cms/member/member.dart';
import 'package:cms/styles/colors.dart';
import 'package:flutter/material.dart';
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
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: const MemberApp(),
          theme: ThemeData(
            scaffoldBackgroundColor: scaffoldBackgroundColor,
          ),
        );
      },
    );
  }
}
