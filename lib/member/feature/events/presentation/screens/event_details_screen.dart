import 'package:cms/styles/colors.dart';
import 'package:cms/styles/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EventDetailsScreen extends StatelessWidget {
  const EventDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: false,
        title: const Text(
          "Break Forth Encounter",
          style: TextStyle(
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
            Image.asset(
              "assets/images/flier2.jpg",
              fit: BoxFit.cover,
              filterQuality: FilterQuality.high,
              height: 450.h,
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
                    "Break Forth Encounter",
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
                  const DetailsTile(
                    icon: Icons.calendar_month_rounded,
                    first: "Wednesday, May 3 - Friday, May 3",
                    second: "5:30 PM - 9:00 PM",
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  const DetailsTile(
                    icon: Icons.place,
                    first: "LAM Conference Center",
                    second: "off Book Foundation, along ifite Road, Awka",
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
                          children: const [
                            Text(
                              "LAM Conference Center",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            Text("Church"),
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
        Column(
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
        )
      ],
    );
  }
}
