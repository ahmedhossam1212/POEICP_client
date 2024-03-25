import 'package:flutter/material.dart';
import 'package:poeicp_client/core/utils/app_colors.dart';
import 'package:poeicp_client/core/utils/media_query_values.dart';

import '../../../core/utils/style_manager.dart';

Widget mainButton(
  BuildContext context, {
  required VoidCallback onpressd,
  required Color background,
  required String text,
}) =>
    Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(14)),
      child: MaterialButton(
        minWidth: double.infinity,
        height: context.height * 0.07,
        onPressed: onpressd,
        color: background,
        child: Text(
          text,
          style: getBoldStyle(
              color: AppColors.primary, fontSize: context.height * 0.03),
        ),
      ),
    );
