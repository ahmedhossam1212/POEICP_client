import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:poeicp_client/core/utils/app_colors.dart';
import 'package:poeicp_client/core/utils/media_query_values.dart';
import 'package:poeicp_client/core/utils/style_manager.dart';
import 'package:poeicp_client/presntation/view/widgets/form_field.dart';
import 'package:poeicp_client/presntation/view/widgets/main_button.dart';

class MidicenReport extends StatefulWidget {
  const MidicenReport({super.key});

  @override
  State<MidicenReport> createState() => _MidicenReportState();
}

class _MidicenReportState extends State<MidicenReport> {
  TextEditingController nameController = TextEditingController();
  TextEditingController adressController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController typeController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController officialPriceController = TextEditingController();
  TextEditingController noteController = TextEditingController();

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
    return Scaffold(
      appBar: AppBar(),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Center(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Text(
                    "لتقديم الشكوي قم بملئ البيانات التالية",
                    style: getBoldStyle(color: AppColors.black, fontSize: 20),
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
                          defualtFormField(context, controller: nameController,
                              validate: (String value) {
                            if (value.isEmpty) {
                              return "الرجاء ادخال الاسم";
                            }
                          },
                              hint: "اسم الصيدلية",
                              type: TextInputType.name,
                              width: double.infinity),
                          SizedBox(
                            height: context.height * 0.02,
                          ),
                          defualtFormField(context,
                              controller: adressController,
                              validate: () {},
                              hint: "عنوان الصيدلية",
                              type: TextInputType.text,
                              width: double.infinity),
                          SizedBox(
                            height: context.height * 0.02,
                          ),
                          defualtFormField(context,
                              controller: phoneController,
                              validate: () {},
                              hint: " رقم هاتف الصيدلية",
                              type: TextInputType.number,
                              width: double.infinity),
                          SizedBox(
                            height: context.height * 0.02,
                          ),
                          defualtFormField(context,
                              controller: emailController,
                              validate: () {},
                              hint: "البريد الالكتروني الصيدلية",
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
    );
  }
}
