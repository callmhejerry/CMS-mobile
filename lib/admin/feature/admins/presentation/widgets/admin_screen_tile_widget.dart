import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../shared/authentication/models/admin_model.dart';
import '../../../../../styles/colors.dart';

class AdminScreenTileWidget extends StatelessWidget {
  final AdminModel admin;
  const AdminScreenTileWidget({
    super.key,
    required this.admin,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 30.r,
          backgroundImage: const AssetImage(
            "assets/images/admin_avatar.jpg",
          ),
        ),
        SizedBox(
          width: 20.w,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${admin.firstName} ${admin.lastName}",
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              Text(
                admin.church,
                style: const TextStyle(
                  color: greyText,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
