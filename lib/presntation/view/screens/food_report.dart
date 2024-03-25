import 'dart:io';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:poeicp_client/core/utils/app_colors.dart';
import 'package:poeicp_client/core/utils/media_query_values.dart';
import 'package:poeicp_client/core/utils/style_manager.dart';
import 'package:poeicp_client/presntation/manager/cubit/reports_cubit.dart';
import 'package:poeicp_client/presntation/manager/state/reports_state.dart';
import 'package:poeicp_client/presntation/view/widgets/form_field.dart';
import 'package:poeicp_client/presntation/view/widgets/main_button.dart';

class FoodReport extends StatefulWidget {
  const FoodReport({super.key});

  @override
  State<FoodReport> createState() => _FoodReportState();
}

class _FoodReportState extends State<FoodReport> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController typeController = TextEditingController();
  final TextEditingController priceController = TextEditingController();
  final TextEditingController officialPriceController = TextEditingController();
  final TextEditingController noteController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  File? image;
  String? imageUrl;
  DateTime now = DateTime.now();
  final _picker = ImagePicker();

  Future<void> openImagePicker() async {
    final XFile? pickedImage =
        await _picker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        image = File(pickedImage.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ReportsCubit(),
      child: BlocConsumer<ReportsCubit, ReportsStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(),
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
                          Text(
                            "لتقديم الشكوي قم بملئ البيانات التالية",
                            style: getBoldStyle(
                                color: AppColors.black, fontSize: 20),
                          ),
                          SizedBox(
                            height: context.height * 0.05,
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
                                      hint: "اسم المنفذ",
                                      type: TextInputType.name,
                                      width: double.infinity),
                                  SizedBox(
                                    height: context.height * 0.02,
                                  ),
                                  defualtFormField(context,
                                      controller: addressController,
                                      validate: () {},
                                      hint: "عنوان المنفذ",
                                      type: TextInputType.text,
                                      width: double.infinity),
                                  SizedBox(
                                    height: context.height * 0.02,
                                  ),
                                  defualtFormField(context,
                                      controller: phoneController,
                                      validate: () {},
                                      hint: " رقم هاتف المنفذ",
                                      type: TextInputType.number,
                                      width: double.infinity),
                                  SizedBox(
                                    height: context.height * 0.02,
                                  ),
                                  defualtFormField(context,
                                      controller: emailController,
                                      validate: () {},
                                      hint: "البريد الالكتروني للمنفذ",
                                      type: TextInputType.emailAddress,
                                      width: double.infinity),
                                  SizedBox(
                                    height: context.height * 0.02,
                                  ),
                                  defualtFormField(context,
                                      controller: typeController,
                                      validate: () {},
                                      hint: "نوع السلعة المباعة",
                                      type: TextInputType.text,
                                      width: double.infinity),
                                  SizedBox(
                                    height: context.height * 0.02,
                                  ),
                                  defualtFormField(context,
                                      controller: priceController,
                                      validate: () {},
                                      hint: "سعر السلعة المباعة",
                                      type: TextInputType.number,
                                      width: double.infinity),
                                  SizedBox(
                                    height: context.height * 0.02,
                                  ),
                                  defualtFormField(context,
                                      controller: officialPriceController,
                                      validate: () {},
                                      hint: "المدفوع",
                                      type: TextInputType.number,
                                      width: double.infinity),
                                  SizedBox(
                                    height: context.height * 0.02,
                                  ),
                                  defualtFormField(context,
                                      controller: noteController,
                                      validate: () {},
                                      hint: "ملاحظة",
                                      type: TextInputType.text,
                                      width: double.infinity),
                                  SizedBox(
                                    height: context.height * 0.02,
                                  ),
                                  image != null
                                      ? Container(
                                          clipBehavior: Clip.antiAlias,
                                          width: 120,
                                          height: 120,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.rectangle,
                                          ),
                                          child: Image.file(
                                            image!,
                                            fit: BoxFit.cover,
                                          ))
                                      : TextButton(
                                          onPressed: () {
                                            openImagePicker();
                                          },
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.add,
                                                color: AppColors.black,
                                              ),
                                              Text(
                                                "رفع صورة الفاتورة",
                                                style: getBoldStyle(
                                                    color: AppColors.black),
                                              )
                                            ],
                                          ),
                                        ),
                                  SizedBox(
                                    height: context.height * 0.035,
                                  ),
                                  mainButton(context,
                                      onpressd: () {},
                                      background: AppColors.white,
                                      text: "تسجيل")
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
            ),
          );
        },
      ),
    );
  }
}
