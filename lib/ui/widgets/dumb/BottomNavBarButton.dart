import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:itexc_app/ui/common/app_colors.dart';
import 'package:itexc_app/ui/common/ui_helpers.dart';
import 'package:itexc_app/ui/widgets/dumb/CustomText.dart';
import 'package:styled_widget/styled_widget.dart';

class BottomNavBarButton extends StatelessWidget {
  BottomNavBarButton({
    Key? key,
    required this.isSelected,
    required this.text,
    required this.icon,
    required this.onTap,
  }) : super(key: key);
  bool? isSelected;
  String? text;
  String? icon;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      // crossAxisAlignment: CrossAxisAlignment.center,
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Icon(
        //   Icons.home,
        //   color: kcPrimaryColor,
        // ),
        SvgPicture.asset(icon!,
            height: pSh(context: context, percentage: .023),
            color: kcPrimaryColor),
        // horizontalSpaceSmall,
        isSelected == true ? horizontalSpaceSmall : Container(),
        isSelected == true
            ? CustomText(
                text: text,
                color: kcPrimaryColor,
                weight: FontWeight.bold,
              ).opacity(isSelected == true ? 1 : 0, animate: true).animate(
                Duration(milliseconds: 800), Curves.fastLinearToSlowEaseIn)
            : Container(),
        isSelected == true ? horizontalSpaceSmall : Container(),
      ],
    )
        .padding(horizontal: pSh(context: context, percentage: .015))
        .height(pSh(context: context, percentage: .05))
        .decorated(
          color: kcSecondaryColor.withOpacity(.10),
          borderRadius:
              BorderRadius.circular(pSh(context: context, percentage: .015)),
        )
        .gestures(onTap: onTap)
        .animate(Duration(milliseconds: 800), Curves.fastLinearToSlowEaseIn);
  }
}
