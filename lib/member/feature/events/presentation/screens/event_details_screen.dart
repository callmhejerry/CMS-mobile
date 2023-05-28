import 'package:cms/styles/colors.dart';
import 'package:cms/styles/dimensions.dart';
import 'package:cms/utils/date_extension.dart';
import 'package:cms/utils/time_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../shared/models/event_model.dart';

class EventDetailsScreen extends StatelessWidget {
  final EventModel _eventModel;
  const EventDetailsScreen({super.key, required eventModel})
      : _eventModel = eventModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: false,
        title: Text(
          _eventModel.title,
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
          color: darkBlue,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              _eventModel.thumbnail,
              fit: BoxFit.cover,
              filterQuality: FilterQuality.high,
              height: 450.h,
              errorBuilder: (context, error, stackTrace) {
                return const Placeholder();
              },
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: ScreenPadding.screenPaddingWidth,
                vertical: ScreenPadding.screenPaddingWidth,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    _eventModel.title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17.sp,
                    ),
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.grey,
                    height: 16.h,
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  DetailsTile(
                    icon: Icons.calendar_month_rounded,
                    first:
                        "${_eventModel.startDate.formatDate()} - ${_eventModel.endDate.formatDate()}",
                    second:
                        "${_eventModel.startTime.stringFormat()} - ${_eventModel.endTime.stringFormat()}",
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  DetailsTile(
                    icon: Icons.place,
                    first: _eventModel.venue,
                    second: _eventModel.location,
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  const Divider(
                    color: greyText,
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 25.r,
                        backgroundColor:
                            const Color.fromARGB(66, 193, 193, 193),
                        child: const Icon(
                          Icons.church,
                          color: darkBlue,
                          size: 30,
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Expanded(
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              _eventModel.church,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            const Text("Church"),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DetailsTile extends StatelessWidget {
  final String first;
  final String second;
  final IconData icon;

  const DetailsTile({
    super.key,
    required this.first,
    required this.second,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          icon,
          color: darkBlue,
        ),
        SizedBox(
          width: 16.w,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                first,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              Text(
                second,
                style: const TextStyle(
                  color: greyText,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
