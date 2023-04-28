import 'package:flutter/material.dart';
import 'package:itexc_app/ui/common/app_colors.dart';
import 'package:stacked/stacked.dart';
import 'package:styled_widget/styled_widget.dart';

import '../../common/ui_helpers.dart';
import '../../widgets/dumb/CustomButton.dart';
import '../../widgets/dumb/CustomText.dart';
import '../../widgets/dumb/CustomTextField.dart';
import 'sing_up_viewmodel.dart';

class SingUpView extends StackedView<SingUpViewModel> {
  const SingUpView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SingUpViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: kcBackgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          verticalSpaceMedium,
          // verticalSpaceSmall,
          Container(
            child: Image.asset(
              'assets/images/ItexcLogo.png',
              color: kcPrimaryColor,
            ),
          )
              .height(pSh(context: context, percentage: .1))
              .width(pSh(context: context, percentage: 0.1)),
          verticalSpaceMedium,
          CustomText(
            text: 'Sign up',
            color: kcTextColor,
            weight: FontWeight.bold,
            size: pSh(context: context, percentage: .03),
          ),
          verticalSpaceMedium,
          verticalSpaceSmall,
          // verticalSpaceMedium,
          CustomText(
            text: 'Email',
            color: kcTextColor,
            weight: FontWeight.w500,
            size: pSh(context: context, percentage: .02),
          ).alignment(Alignment.centerLeft),
          verticalSpaceSmall,
          // verticalSpaceSmall,
          CustomTextField(hintText: 'Email'),
          verticalSpaceMedium,
          CustomText(
            text: 'Password',
            color: kcTextColor,
            weight: FontWeight.w500,
            size: pSh(context: context, percentage: .02),
          ).alignment(Alignment.centerLeft),
          verticalSpaceSmall,
          // verticalSpaceSmall,
          CustomTextField(hintText: 'Password'),
          verticalSpaceMedium,
          verticalSpaceMedium,
          CustomButton(
            text: 'Sign up',
            isGradient: true,
          ),
          verticalSpaceSmall,
          verticalSpaceSmall,
          CustomText(
            text: 'Forget the Password ?',
            color: kcPrimaryColor,
            weight: FontWeight.w600,
            size: pSh(context: context, percentage: .018),
          ),
          verticalSpaceMedium,
          CustomText(
            text: 'or continue with',
            color: kcTextColor,
            weight: FontWeight.w600,
            size: pSh(context: context, percentage: .018),
          ),
          verticalSpaceMedium,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset('assets/images/fbLogo.png'),
                  horizontalSpaceSmall,
                  CustomText(
                    text: 'Facebook',
                    weight: FontWeight.bold,
                    color: kcTextColor,
                  ),
                  horizontalSpaceSmall,
                ],
              )
                  .width(pSw(context: context, percentage: .35))
                  .padding(all: pSh(context: context, percentage: .013))
                  .decorated(
                      border: Border.all(color: Color(0xffdadada)),
                      borderRadius: BorderRadius.circular(
                          pSh(context: context, percentage: .01))),
              Row(
                children: [
                  Image.asset('assets/images/googleLogo.png'),
                  horizontalSpaceSmall,
                  CustomText(
                    text: 'Google',
                    weight: FontWeight.bold,
                    color: kcTextColor,
                  ),
                  horizontalSpaceSmall,
                ],
              )
                  .width(pSw(context: context, percentage: .35))
                  .padding(all: pSh(context: context, percentage: .013))
                  .decorated(
                      border: Border.all(color: Color(0xffdadada)),
                      borderRadius: BorderRadius.circular(
                          pSh(context: context, percentage: .01))),
            ],
          ),
          verticalSpaceMedium,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(
                text: 'you have an account ?',
                weight: FontWeight.w500,
                color: kcTextColor.withOpacity(.5),
              ),
              horizontalSpaceSmall,
              CustomText(
                text: 'Sign In',
                weight: FontWeight.w600,
                color: kcPrimaryColor,
              ),
            ],
          ),
        ],
      )
          .safeArea()
          .padding(all: pSh(context: context, percentage: .022))
          .width(pSw(context: context))
          .height(pSh(context: context)),
    );
  }

  @override
  SingUpViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SingUpViewModel();
}