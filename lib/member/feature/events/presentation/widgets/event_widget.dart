import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../shared/models/event_model.dart';
import '../../../../../styles/colors.dart';
import '../../../../../styles/dimensions.dart';
import '../../../../../styles/fonts.dart';
import 'event_card.dart';

class EventWidget extends StatelessWidget {
  final String eventHeading;
  final List<EventModel> events;
  const EventWidget({
    super.key,
    required this.eventHeading,
    required this.events,
  });

  @override
  Widget build(BuildContext context) {
    final onScreen = events.take(5).toList();
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
            itemCount: onScreen.length,
            itemBuilder: (context, index) {
              if (index == 0) {
                return EventCard(
                  leftPadding: ScreenPadding.screenPaddingWidth,
                  eventModel: onScreen[index],
                );
              }
              if (onScreen.length - 1 == index) {
                return EventCard(
                  eventModel: onScreen[index],
                  rightPadding: ScreenPadding.screenPaddingWidth,
                );
              }
              return EventCard(
                eventModel: onScreen[index],
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
