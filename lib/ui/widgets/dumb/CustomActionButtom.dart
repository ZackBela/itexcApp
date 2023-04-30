import 'package:flutter/material.dart';
import 'package:itexc_app/ui/common/app_colors.dart';
import 'package:itexc_app/ui/common/ui_helpers.dart';
import 'package:styled_widget/styled_widget.dart';
// import 'package:styled_widget/styled_widget.dart';

class CustomActionButtom extends StatelessWidget {
  CustomActionButtom({
    Key? key,
    required this.icon,
    required this.ontap,
  }) : super(key: key);
  String? icon;
  final Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      icon!,
      color: kcPrimaryColor,
      height: pSh(context: context, percentage: .02),
      width: pSh(context: context, percentage: .02),
    )
        .padding(all: pSh(context: context, percentage: .015))
        .decorated(
            color: kcSecondaryColor.withOpacity(.1),
            borderRadius:
                BorderRadius.circular(pSh(context: context, percentage: .013)))
        .gestures(onTap: ontap);
  }
}
