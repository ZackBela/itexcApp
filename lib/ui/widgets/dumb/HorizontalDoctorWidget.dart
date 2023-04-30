import 'package:flutter/material.dart';
import 'package:itexc_app/ui/widgets/dumb/CustomText.dart';
import 'package:styled_widget/styled_widget.dart';

import '../../common/app_colors.dart';
import '../../common/ui_helpers.dart';
import 'CustomActionButtom.dart';

class HorizontalDoctorWidget extends StatelessWidget {
  const HorizontalDoctorWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset('assets/images/doctorFemale.png').clipRRect(
          topLeft: pSh(context: context, percentage: .01),
          bottomLeft: pSh(context: context, percentage: .01),
        ),
        horizontalSpaceMedium,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
              text: 'Dr. Eleanor Pena',
              weight: FontWeight.bold,
            ),
            verticalSpaceTiny,
            CustomText(
              text: '⭐️ 4.3 (130 reviews)',
              size: pSh(context: context, percentage: .015),
            ),
            verticalSpaceTiny,
            CustomText(
              text: 'Cardio specialistr - Oran Hospital',
              size: pSh(context: context, percentage: .015),
            ).width(pSw(context: context, percentage: .43)),
          ],
        ).center(),
        Spacer(),
        CustomActionButtom(icon: 'assets/images/heart.png', ontap: () {}),
        horizontalSpaceSmall,
      ],
    )
        .width(pSw(context: context))
        .height(pSh(context: context, percentage: .12))
        .decorated(
            color: kcBackgroundColor,
            border: Border.all(color: kcTextColor.withOpacity(.1)),
            borderRadius:
                BorderRadius.circular(pSh(context: context, percentage: .01)));
  }
}
