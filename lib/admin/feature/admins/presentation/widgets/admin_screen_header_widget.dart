import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../styles/dimensions.dart';

class AdminScreenHeader extends StatelessWidget {
  const AdminScreenHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: ScreenPadding.screenPaddingWidth,
        vertical: ScreenPadding.screenPaddingWidth,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Admins",
            style: TextStyle(
              fontSize: 30.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          Icon(
            Icons.person_2,
            size: 35.r,
          ),
        ],
      ),
    );
  }
}
