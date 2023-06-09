import 'package:cms/member/feature/events/presentation/screens/event_details_screen.dart';
import 'package:cms/utils/date_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../shared/models/event_model.dart';
import '../../../../../styles/colors.dart';

class EventCard extends StatelessWidget {
  final double leftPadding;
  final double rightPadding;
  final EventModel eventModel;
  const EventCard({
    super.key,
    this.leftPadding = 0,
    this.rightPadding = 0,
    required this.eventModel,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) {
            return EventDetailsScreen(
              eventModel: eventModel,
            );
          },
        ));
      },
      child: Padding(
        padding: EdgeInsets.only(
          left: leftPadding,
          right: rightPadding,
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
                  child: Image.network(
                    eventModel.thumbnail,
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
                            child: Text(
                              eventModel.title,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ),
                          const Spacer(
                            flex: 10,
                          ),
                          Text(
                            eventModel.startDate.formatDate(),
                            style: const TextStyle(
                              color: darkBlue,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const Spacer(
                            flex: 8,
                          ),
                          Text(
                            eventModel.location,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(color: greyText),
                          ),
                          const Spacer(
                            flex: 8,
                          ),
                          Text(
                            eventModel.church,
                            style: const TextStyle(
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
