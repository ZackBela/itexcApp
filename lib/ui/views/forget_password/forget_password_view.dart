import 'package:flutter/material.dart';
import 'package:itexc_app/ui/common/app_colors.dart';
import 'package:itexc_app/ui/widgets/dumb/CustomButton.dart';
import 'package:itexc_app/ui/widgets/dumb/CustomText.dart';
import 'package:stacked/stacked.dart';
import 'package:styled_widget/styled_widget.dart';

import '../../common/ui_helpers.dart';
import '../../widgets/dumb/EnterNewPassword.dart';
import '../../widgets/dumb/OtpField.dart';
import '../../widgets/dumb/SelectretrievingPasswordMethode.dart';
import '../../widgets/smart/CustomAppBar/custom_app_bar_view.dart';
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
          CustomAppBarView(
            title: 'Forgot Password',
          ),
          verticalSpaceSmall,
          verticalSpaceTiny,
          verticalSpaceSmall,
          PageView(
            physics: NeverScrollableScrollPhysics(),
            controller: viewModel.pagecontroller,
            children: [
              SelectretrievingPasswordMethode(
                index: viewModel.methodeSelected,
                onEmailTap: () {
                  viewModel.updateMethodeSelected(1);
                },
                onSmsTap: () {
                  viewModel.updateMethodeSelected(0);
                },
              ),
              OtpField(),
              EnterNewPassword(),
            ],
          ).expanded(),
          CustomButton(
            text: 'Continue',
            isGradient: true,
            onTap: () {
              viewModel.nextPage();
            },
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
