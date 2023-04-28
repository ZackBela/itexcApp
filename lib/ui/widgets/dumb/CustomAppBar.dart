import 'package:flutter/material.dart';
import 'package:itexc_app/ui/common/app_colors.dart';
import 'package:itexc_app/ui/common/ui_helpers.dart';
import 'package:itexc_app/ui/widgets/dumb/CustomText.dart';
import 'package:styled_widget/styled_widget.dart';

class CustomAppBar extends StatelessWidget {
  CustomAppBar({super.key, required this.title});
  String? title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.arrow_back,
          color: kcPrimaryColor,
        ).padding(all: pSh(context: context, percentage: .01)),
        horizontalSpaceMedium,
        CustomText(
          text: title,
          color: kcTextColor,
          weight: FontWeight.bold,
          size: pSh(context: context, percentage: .024),
        )
      ],
    ).padding(all: pSh(context: context, percentage: .01));
  }
}