import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../styles/dimensions.dart';
import '../../../../../styles/fonts.dart';
import '../screens/events_screen.dart';

class PastEventsWidget extends StatelessWidget {
  const PastEventsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: ScreenPadding.screenPaddingWidth),
          child: const Text(
            "Past Events",
            style: eventScreenHeadingTextStyle,
          ),
        ),
        SizedBox(
          height: 16.h,
        ),
        SizedBox(
          height: 128.h,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) {
              if (index == 0) {
                return PastEventCard(
                  leftPadding: ScreenPadding.screenPaddingWidth,
                );
              }
              if (index == 4) {
                return PastEventCard(
                  rightPadding: ScreenPadding.screenPaddingWidth,
                );
              }
              return const PastEventCard();
            },
            separatorBuilder: (context, index) {
              return SizedBox(
                width: 10.w,
              );
            },
          ),
        ),
      ],
    );
  }
}
