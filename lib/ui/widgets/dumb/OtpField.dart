import 'package:flutter/material.dart';
import 'package:itexc_app/ui/common/app_colors.dart';
import 'package:itexc_app/ui/common/ui_helpers.dart';
import 'package:itexc_app/ui/widgets/dumb/CustomText.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:styled_widget/styled_widget.dart';

class OtpField extends StatelessWidget {
  const OtpField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomText(
          text: 'Code has been send to + 213 ********* 4725',
          color: kcTextColor,
        ),
        verticalSpaceSmall,
        verticalSpaceSmall,
        Container(
          child: PinCodeTextField(
            length: 4,
            obscureText: false,
            animationType: AnimationType.fade,
            enableActiveFill: false,
            showCursor: false,
            pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(
                    pSh(context: context, percentage: .02)),
                fieldHeight: pSh(context: context, percentage: .08),
                fieldWidth: pSh(context: context, percentage: .08),
                fieldOuterPadding: EdgeInsets.all(0),
                activeFillColor: Colors.white,
                selectedColor: kcPrimaryColor,
                inactiveColor: kcTextColor.withOpacity(.1),
                activeColor: kcPrimaryColor,
                errorBorderColor: Colors.red),
            onChanged: (String value) {},
            appContext: context,
          ),
        ).width(pSw(context: context, percentage: .8)),
        verticalSpaceSmall,
        verticalSpaceSmall,
        CustomText(
          text: 'Resend code in 56 s',
          color: kcTextColor,
          weight: FontWeight.bold,
        ),
        verticalSpaceSmall,
      ],
    );
  }
}
