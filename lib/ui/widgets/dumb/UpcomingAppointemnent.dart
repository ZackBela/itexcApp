import 'package:flutter/material.dart';
import 'package:itexc_app/ui/common/ui_helpers.dart';
import 'package:itexc_app/ui/widgets/dumb/CustomButton.dart';
import 'package:itexc_app/ui/widgets/dumb/CustomText.dart';

class UpcomingAppointemnent extends StatelessWidget {
  const UpcomingAppointemnent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(),
        Column(
          children: [
            Image.asset('assets/images/Auto Layout Horizontal.png'),
            verticalSpaceMedium,
            CustomText(
              text: 'You Don’t have any appointment',
              weight: FontWeight.bold,
              size: pSh(context: context, percentage: .025),
            ),
            verticalSpaceSmall,
            CustomText(
              text: 'we Hope that’s mean your health is good',
              size: pSh(context: context, percentage: .018),
            ),
          ],
        ),
        CustomButton(
          text: 'Book Appointement',
          isGradient: true,
        )
      ],
    );
  }
}
