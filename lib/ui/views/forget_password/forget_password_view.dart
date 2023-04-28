import 'package:flutter/material.dart';
import 'package:itexc_app/ui/common/app_colors.dart';
import 'package:itexc_app/ui/widgets/dumb/CustomButton.dart';
import 'package:itexc_app/ui/widgets/dumb/CustomText.dart';
import 'package:stacked/stacked.dart';
import 'package:styled_widget/styled_widget.dart';

import '../../common/ui_helpers.dart';
import '../../widgets/dumb/CustomAppBar.dart';
import '../../widgets/dumb/EnterNewPassword.dart';
import '../../widgets/dumb/OtpField.dart';
import '../../widgets/dumb/SelectretrievingPasswordMethode.dart';
import 'forget_password_viewmodel.dart';

class ForgetPasswordView extends StackedView<ForgetPasswordViewModel> {
  const ForgetPasswordView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ForgetPasswordViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: kcBackgroundColor,
      body: Column(
        children: [
          CustomAppBar(
            title: 'Forgot Password',
          ),
          verticalSpaceSmall,
          verticalSpaceTiny,
          verticalSpaceSmall,
          PageView(
            children: [
              SelectretrievingPasswordMethode(),
              OtpField(),
              EnterNewPassword(),
            ],
          ).expanded(),
          CustomButton(
            text: 'Continue',
            isGradient: true,
          ),
          verticalSpaceMedium,
        ],
      )
          .safeArea()
          .height(pSh(context: context))
          .width(pSw(context: context))
          .padding(all: pSh(context: context, percentage: .019)),
    );
  }

  @override
  ForgetPasswordViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ForgetPasswordViewModel();
}
