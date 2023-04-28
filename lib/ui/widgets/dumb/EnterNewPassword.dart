import 'package:flutter/material.dart';
import 'package:itexc_app/ui/common/ui_helpers.dart';
import 'package:itexc_app/ui/widgets/dumb/CustomText.dart';
import 'package:itexc_app/ui/widgets/dumb/CustomTextField.dart';
import 'package:styled_widget/styled_widget.dart';

import '../../common/app_colors.dart';

class EnterNewPassword extends StatelessWidget {
  const EnterNewPassword({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        verticalSpaceSmall,
        CustomText(
          text: 'Create new password',
          size: pSh(context: context, percentage: .02),
          weight: FontWeight.w600,
        ),
        verticalSpaceMedium,
        verticalSpaceMedium,

        CustomText(
          text: 'New password',
          color: kcTextColor,
          weight: FontWeight.w500,
          size: pSh(context: context, percentage: .017),
        ),
        verticalSpaceSmall,
        // verticalSpaceSmall,
        CustomTextField(
          hintText: 'new password',
          obscureText: true,
          suffixIcon: Icons.remove_red_eye,
        ),
        verticalSpaceMedium,
        CustomText(
          text: 'Confirm new password',
          color: kcTextColor,
          weight: FontWeight.w500,
          size: pSh(context: context, percentage: .017),
        ),
        verticalSpaceSmall,
        // verticalSpaceSmall,
        CustomTextField(
            hintText: 'confirm new password',
            obscureText: true,
            suffixIcon: Icons.remove_red_eye),
      ],
    );
  }
}
