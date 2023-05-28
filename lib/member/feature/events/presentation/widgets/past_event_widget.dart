import 'package:cms/shared/models/event_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../styles/dimensions.dart';
import '../../../../../styles/fonts.dart';
import '../screens/events_screen.dart';

class PastEventsWidget extends StatelessWidget {
  final List<EventModel> pastEvents;
  const PastEventsWidget({super.key, required this.pastEvents});

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
            itemCount: pastEvents.length,
            itemBuilder: (context, index) {
              if (index == 0) {
                return PastEventCard(
                  leftPadding: ScreenPadding.screenPaddingWidth,
                  eventModel: pastEvents[index],
                );
              }
              if (pastEvents.length - 1 == index) {
                return PastEventCard(
                  rightPadding: ScreenPadding.screenPaddingWidth,
                  eventModel: pastEvents[index],
                );
              }
              return PastEventCard(
                eventModel: pastEvents[index],
              );
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
