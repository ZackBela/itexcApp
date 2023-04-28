import 'package:flutter/material.dart';
import 'package:itexc_app/ui/common/app_colors.dart';
import 'package:itexc_app/ui/common/ui_helpers.dart';
import 'package:itexc_app/ui/widgets/dumb/CustomButton.dart';
import 'package:stacked/stacked.dart';
import 'package:styled_widget/styled_widget.dart';

import 'landing_page_viewmodel.dart';

class LandingPageView extends StackedView<LandingPageViewModel> {
  const LandingPageView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    LandingPageViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: kcBackgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          Container(
            child: Image.asset(
              'assets/images/ItexcLogo.png',
              color: kcPrimaryColor,
            ),
          ).center(),
          Spacer(),
          CustomButton(
            text: 'Sing up',
            isGradient: true,
          ),
          verticalSpaceMedium,
          CustomButton(
            text: 'Sing in',
            hasBorder: true,
            backgroundColor: kcBackgroundColor,
            textColor: kcPrimaryColor,
          ),
          verticalSpaceMedium,
        ],
      )
          .height(pSh(context: context))
          .width(pSw(context: context))
          .padding(all: pSh(context: context, percentage: .019)),
    );
  }

  @override
  LandingPageViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LandingPageViewModel();
}
