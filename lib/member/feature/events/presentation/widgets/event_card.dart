import 'package:cms/member/feature/events/presentation/screens/event_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../styles/colors.dart';

class EventCard extends StatelessWidget {
  final double padding;
  const EventCard({super.key, this.padding = 0});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) {
            return const EventDetailsScreen();
          },
        ));
      },
      child: Padding(
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
      ),
    );
  }
}
