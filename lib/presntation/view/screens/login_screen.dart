import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:poeicp_client/core/utils/app_colors.dart';
import 'package:poeicp_client/core/utils/media_query_values.dart';
import 'package:poeicp_client/presntation/manager/cubit/auth_cubit.dart';
import 'package:poeicp_client/presntation/manager/state/auth_state.dart';
import 'package:poeicp_client/presntation/view/screens/home_screen.dart';
import 'package:poeicp_client/presntation/view/widgets/form_field.dart';
import 'package:poeicp_client/presntation/view/widgets/main_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController idController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController confirmpassController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthStates>(
      listener: (context, state) {
        if (state is AuthSuccessState) {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HomeScreen(),
              ));
        }
      },
      builder: (context, state) {
        var cubit = AuthCubit.get(context);
        return Scaffold(
            body: Directionality(
          textDirection: TextDirection.rtl,
          child: Center(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Form(
                  key: formKey,
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/images/logo.png",
                        height: context.height * 0.35,
                        color: AppColors.primary,
                      ),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(30),
                                bottomRight: Radius.circular(30)),
                            color: AppColors.primary),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              defualtFormField(context,
                                  controller: nameController,
                                  validate: (String value) {
                                if (value.isEmpty) {
                                  return "الرجاء ادخال الاسم";
                                }
                              },
                                  hint: "الاسم ثلاثي",
                                  type: TextInputType.name,
                                  width: double.infinity),
                              SizedBox(
                                height: context.height * 0.02,
                              ),
                              defualtFormField(context,
                                  controller: idController,
                                  validate: (String value) {
                                if (value.isEmpty) {
                                  return "الرجاء ادخال الرقم القومي";
                                }
                              },
                                  hint: "الرقم القومي",
                                  type: TextInputType.number,
                                  width: double.infinity),
                              SizedBox(
                                height: context.height * 0.02,
                              ),
                              defualtFormField(context,
                                  controller: phoneController,
                                  validate: (String value) {
                                if (value.isEmpty) {
                                  return "الرجاء ادخال رقم الهاتف";
                                }
                              },
                                  hint: "رقم الهاتف",
                                  type: TextInputType.number,
                                  width: double.infinity),
                              SizedBox(
                                height: context.height * 0.02,
                              ),
                              defualtFormField(context,
                                  controller: passController,
                                  validate: (String value) {
                                if (value.isEmpty) {
                                  return "الرجاء ادخال الرقم السري";
                                }
                              },
                                  hint: "الرقم السري",
                                  type: TextInputType.text,
                                  width: double.infinity),
                              SizedBox(
                                height: context.height * 0.02,
                              ),
                              defualtFormField(context,
                                  controller: confirmpassController,
                                  validate: (String value) {
                                if (value != passController.text) {
                                  return "الرجاء تأكيد الرقم السري";
                                }
                              },
                                  hint: "تأكيد الرقم السري",
                                  type: TextInputType.text,
                                  width: double.infinity),
                              SizedBox(
                                height: context.height * 0.035,
                              ),
                              BlocBuilder<AuthCubit, AuthStates>(
                                builder: (context, state) {
                                  if (state is AuthLoadingState) {
                                    return Center(
                                      child: CircularProgressIndicator(
                                        color: AppColors.white,
                                      ),
                                    );
                                  } else {
                                    return mainButton(context, onpressd: () {
                                      if (formKey.currentState!.validate()) {
                                        cubit.createUser(
                                            email:
                                                "${idController.text}@gmail.com",
                                            name: nameController.text,
                                            password: passController.text,
                                            phone: phoneController.text);
                                      }
                                    },
                                        background: AppColors.white,
                                        text: "تسجيل");
                                  }
                                },
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
      },
    );
  }
}
