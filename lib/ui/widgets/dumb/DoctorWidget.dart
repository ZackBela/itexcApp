import 'package:flutter/material.dart';
import 'package:itexc_app/ui/common/app_colors.dart';
import 'package:itexc_app/ui/common/ui_helpers.dart';
import 'package:itexc_app/ui/widgets/dumb/CustomText.dart';
import 'package:styled_widget/styled_widget.dart';

class DoctorWidget extends StatelessWidget {
  const DoctorWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          children: [
            Container()
                .height(pSh(context: context, percentage: .08))
                .width(pSh(context: context, percentage: .08))
                .decorated(color: kcTextColor, shape: BoxShape.circle),
            Container()
                .height(pSh(context: context, percentage: .018))
                .width(pSh(context: context, percentage: .018))
                .decorated(
                    color: kcPrimaryColor,
                    shape: BoxShape.circle,
                    border: Border.all(color: kcBackgroundColor))
                .positioned(right: 0),
          ],
        ),
        verticalSpaceMedium,
        CustomText(
          text: 'Dr. Bellamy N',
          color: kcTextColor,
        ),
        verticalSpaceSmall,
        CustomText(
          text: 'Viralogist',
          weight: FontWeight.bold,
          color: Color(0xff6B779A),
        ),
        verticalSpaceSmall,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
              text: '⭐️ 4.5 (135 reviews)',
              weight: FontWeight.bold,
              color: Color(0xff6B779A),
              size: pSh(context: context, percentage: .015),
            ),
          ],
        ),
      ],
    )
        .width(pSw(context: context, percentage: .33))
        .padding(
          all: pSh(context: context, percentage: .024),
        )
        .decorated(
            border: Border.all(color: kcTextColor.withOpacity(.2)),
            borderRadius:
                BorderRadius.circular(pSh(context: context, percentage: .03)));
  }
}
