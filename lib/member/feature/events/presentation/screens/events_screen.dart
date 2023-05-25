import 'package:cms/styles/colors.dart';
import 'package:cms/styles/dimensions.dart';
import 'package:cms/styles/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/past_event_widget.dart';

class EventScreen extends StatelessWidget {
  const EventScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: ScreenPadding.screenPaddingWidth,
        title: const Text(
          "Events",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const EventWidget(eventHeading: "Today's Events"),
              SizedBox(
                height: 16.h,
              ),
              const PastEventsWidget(),
              SizedBox(
                height: 16.h,
              ),
              const EventWidget(eventHeading: "Upcoming Events"),
            ],
          ),
        ),
      ),
    );
  }
}

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

class EventCard extends StatelessWidget {
  final double padding;
  const EventCard({super.key, this.padding = 0});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: padding,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: SizedBox(
          width: 219.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 163,
                child: Image.asset(
                  "assets/images/flier2.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                flex: 114,
                child: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.w,
                      vertical: 10.h,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 35.h,
                          child: const Text(
                            "Prophetic Emphasis Program",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        const Spacer(
                          flex: 10,
                        ),
                        const Text(
                          "Sat, Nov 10, 9:00 PM",
                          style: TextStyle(
                            color: darkBlue,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Spacer(
                          flex: 8,
                        ),
                        const Text(
                          "After book foundation awka",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(color: greyText),
                        ),
                        const Spacer(
                          flex: 8,
                        ),
                        const Text(
                          "LAM awka",
                          style: TextStyle(
                            fontSize: 14.5,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PastEventCard extends StatelessWidget {
  final double leftPadding;
  final double rightPadding;
  const PastEventCard({
    super.key,
    this.leftPadding = 0,
    this.rightPadding = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: leftPadding,
        right: rightPadding,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: SizedBox(
          width: 250.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 90,
                child: Image.asset(
                  "assets/images/flier1.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                flex: 38,
                child: DecoratedBox(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.h),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Super Wednesday service",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          "Ifite Awka",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: greyText,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
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
