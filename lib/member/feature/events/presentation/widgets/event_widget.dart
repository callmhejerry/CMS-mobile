import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../styles/colors.dart';
import '../../../../../styles/dimensions.dart';
import '../../../../../styles/fonts.dart';
import 'event_card.dart';

class EventWidget extends StatelessWidget {
  final String eventHeading;
  const EventWidget({super.key, required this.eventHeading});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: ScreenPadding.screenPaddingWidth,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                eventHeading,
                style: eventScreenHeadingTextStyle,
              ),
              const InkWell(
                child: Text(
                  "View all",
                  style: TextStyle(
                    color: darkBlue,
                    fontSize: 16,
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 16.h,
        ),
        SizedBox(
          height: 277.h,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) {
              if (index == 0) {
                return EventCard(
                  padding: ScreenPadding.screenPaddingWidth,
                );
              }
              return const EventCard();
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
