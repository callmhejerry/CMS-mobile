import 'package:cms/styles/colors.dart';
import 'package:cms/styles/dimensions.dart';
import 'package:cms/utils/form_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../shared/blocs/church_bloc/church_bloc.dart';
import '../../../../../shared/blocs/church_bloc/church_event.dart';
import '../../../../../shared/blocs/church_bloc/church_state.dart';
import '../../../../../shared/widgets/custom_text_field.dart';

class AddAdminScreen extends StatefulWidget {
  const AddAdminScreen({super.key});

  @override
  State<AddAdminScreen> createState() => _AddAdminScreenState();
}

class _AddAdminScreenState extends State<AddAdminScreen> with FormValidators {
  List<DropdownMenuItem<String>> getDropDown(ChurchState state) {
    if (state is ChurchSuccessState) {
      final dropDowns = state.churches
          .map(
            (church) => DropdownMenuItem<String>(
              value: church.name,
              child: Text(church.name),
            ),
          )
          .toList();
      return dropDowns;
    } else {
      return [];
    }
  }

  final formKey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController firstNameController = TextEditingController();

  final TextEditingController lastNameController = TextEditingController();

  final TextEditingController phoneNumberController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    passwordController.dispose();
    emailController.dispose();
    firstNameController.dispose();
    lastNameController.dispose();
    phoneNumberController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Create Admin",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: false,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: darkBlue,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        padding: EdgeInsets.symmetric(
          horizontal: ScreenPadding.screenPaddingWidth,
          vertical: ScreenPadding.screenPaddingWidth,
        ),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Create an Admin",
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              CustomTextField(
                hintText: "Email address",
                controller: emailController,
                validator: emailValidator,
              ),
              SizedBox(
                height: 16.h,
              ),
              CustomTextField(
                controller: firstNameController,
                hintText: "First name",
                validator: nameValidator,
              ),
              SizedBox(
                height: 16.h,
              ),
              CustomTextField(
                hintText: "Last name",
                controller: lastNameController,
                validator: nameValidator,
              ),
              SizedBox(
                height: 16.h,
              ),
              CustomTextField(
                hintText: "Phone number",
                validator: phoneNumberValidator,
                controller: phoneNumberController,
              ),
              SizedBox(
                height: 16.h,
              ),
              BlocConsumer<ChurchBloc, ChurchState>(
                listener: (context, state) {
                  if (state is InternetFailureState) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("No internet connection"),
                      ),
                    );
                  }
                },
                listenWhen: (previous, current) {
                  return current is InternetFailureState;
                },
                builder: (context, state) {
                  return DropdownButtonFormField<String>(
                    hint: const Text("Church"),
                    items: getDropDown(state),
                    validator: churchValidator,
                    value: state is ChurchSuccessState ? state.value : null,
                    onChanged: (String? church) {
                      if (church != null && state is ChurchSuccessState) {
                        context.read<ChurchBloc>().add(
                              SelectChurch(church: church),
                            );
                        // print(state.value);
                      }
                    },
                    decoration: InputDecoration(
                      hintText: "church",
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                        borderSide: const BorderSide(
                          color: darkBlue,
                          style: BorderStyle.solid,
                          width: 2,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                        borderSide: const BorderSide(
                          color: greyText,
                          style: BorderStyle.solid,
                        ),
                      ),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 16.h,
              ),
              CustomTextField(
                hintText: "Password",
                controller: passwordController,
                validator: passwordValidator,
              ),
              SizedBox(
                height: 16.h,
              ),
              ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    // TODO : submit the credentials to the backend
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: darkBlue,
                  minimumSize: Size(200.w, 50.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      10.r,
                    ),
                  ),
                ),
                child: Text(
                  "Continue",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16.sp,
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
