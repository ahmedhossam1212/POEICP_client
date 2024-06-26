import 'package:flutter/material.dart';
import 'package:poeicp_client/core/utils/app_colors.dart';
import 'package:poeicp_client/core/utils/style_manager.dart';

Widget defualtFormField(
  BuildContext context, {
  required TextEditingController controller,
  required Function validate,
  required String hint,
  required TextInputType type,
  required double width,
  bool isPassword = false,
  Widget? suffix,
}) =>
    Container(
      width: width,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: TextFormField(
          obscureText: isPassword,
          keyboardType: type,
          controller: controller,
          validator: (String? s) {
            return validate(s);
          },
          cursorColor: AppColors.black,
          style: getMediumStyle(color: AppColors.black, fontSize: 17),
          decoration: InputDecoration(
              hintStyle: getMediumStyle(color: AppColors.grey, fontSize: 17),
              hintText: hint,
              suffixIcon: suffix,
              filled: true,
              fillColor: AppColors.white,
              errorBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              focusedErrorBorder: InputBorder.none,
              border: const OutlineInputBorder()),
        ),
      ),
    );
