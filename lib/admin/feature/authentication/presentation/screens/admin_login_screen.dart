import 'package:cms/shared/authentication/blocs/auth_bloc.dart';
import 'package:cms/shared/authentication/blocs/auth_event.dart';
import 'package:cms/shared/authentication/blocs/auth_state.dart';
import 'package:cms/shared/widgets/custom_text_field.dart';
import 'package:cms/styles/colors.dart';
import 'package:cms/styles/dimensions.dart';
import 'package:cms/utils/form_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AdminLoginScreen extends StatefulWidget {
  const AdminLoginScreen({super.key});

  @override
  State<AdminLoginScreen> createState() => _AdminLoginScreenState();
}

class _AdminLoginScreenState extends State<AdminLoginScreen>
    with FormValidators {
  late final TextEditingController emailController;
  late final GlobalKey<FormState> formKey;
  late final TextEditingController passwordController;

  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    formKey = GlobalKey<FormState>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: darkBlue,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: ScreenPadding.screenPaddingWidth,
        ),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 30.h,
              ),
              Text(
                "Login",
                style: TextStyle(
                  fontSize: 36.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              CustomTextField(
                hintText: "Email address",
                controller: emailController,
                validator: emailValidator,
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomTextField(
                hintText: "Password",
                controller: passwordController,
                validator: passwordValidator,
              ),
              SizedBox(
                height: 40.h,
              ),
              BlocConsumer<AuthBloc, AuthState>(
                listener: (context, state) {
                  if (state is AdminAuthState) {
                    Navigator.pop(context);
                  }
                  if (state is AuthFailureState) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          state.message,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                          ),
                        ),
                        backgroundColor: Colors.red,
                      ),
                    );
                  }
                },
                builder: (context, state) {
                  return ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        final authBloc = context.read<AuthBloc>();
                        authBloc.add(
                          LoginAdmin(
                            emailAddress: emailController.text,
                            password: passwordController.text,
                          ),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: darkBlue,
                      fixedSize: const Size(0, 50),
                    ),
                    child: state is LoadingState
                        ? const CircularProgressIndicator(
                            color: Colors.white,
                          )
                        : const Text(
                            "Login",
                            style: TextStyle(fontSize: 17),
                          ),
                  );
                },
              ),
            ],
          ),
        ),
      )),
    );
  }
}
