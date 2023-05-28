import 'package:cms/admin/feature/admins/blocs/admin_state.dart';
import 'package:cms/admin/feature/admins/presentation/Screens/add_admin_screen.dart';
import 'package:cms/styles/colors.dart';
import 'package:cms/styles/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../blocs/admin_bloc.dart';
import '../widgets/admin_screen_header_widget.dart';
import '../widgets/admin_screen_tile_widget.dart';

class AdminScreen extends StatelessWidget {
  const AdminScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) {
                return AddAdminScreen();
              },
            ),
          );
        },
        backgroundColor: darkBlue,
        child: const Icon(
          Icons.add,
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const AdminScreenHeader(),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.r),
                    topRight: Radius.circular(30.r),
                  ),
                ),
                child: BlocBuilder<AdminBloc, AdminState>(
                  builder: (context, state) {
                    if (state is AdminInitialState) {
                      return const Center(
                        child: CircularProgressIndicator(
                          color: darkBlue,
                        ),
                      );
                    }
                    if (state is AdminsSuccess) {
                      return ListView.separated(
                        itemCount: state.admins.length,
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: 24.h,
                          );
                        },
                        itemBuilder: (context, index) {
                          return AdminScreenTileWidget(
                            admin: state.admins[index],
                          );
                        },
                        padding: EdgeInsets.symmetric(
                          horizontal: ScreenPadding.screenPaddingWidth,
                          vertical: ScreenPadding.screenPaddingWidth,
                        ),
                      );
                    }
                    if (state is NoAdminState) {
                      return const Center(
                        child: Text(
                          "No admins",
                        ),
                      );
                    }
                    if (state is AdminFailureState) {
                      return Center(
                        child: Text(state.message),
                      );
                    }
                    return const SizedBox.shrink();
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
