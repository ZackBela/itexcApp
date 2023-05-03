import 'package:flutter/material.dart';
import 'package:itexc_app/ui/common/app_colors.dart';
import 'package:itexc_app/ui/common/ui_helpers.dart';
import 'package:itexc_app/ui/widgets/dumb/CustomButton.dart';
import 'package:itexc_app/ui/widgets/dumb/CustomText.dart';
import 'package:stacked/stacked.dart';
import 'package:styled_widget/styled_widget.dart';

import '../../common/app_data.dart';
import 'onboarding_viewmodel.dart';

class OnboardingView extends StackedView<OnboardingViewModel> {
  const OnboardingView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    OnboardingViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: kcBackgroundColor,
      body: Column(
        children: [
          PageView.builder(
              itemCount: onBoradingData.length,
              controller: viewModel.pageController,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    Container(
                      child: Image.asset(onBoradingData[index]['image'])
                          .padding()
                          .alignment(Alignment.bottomCenter),
                    )
                        .height(pSh(context: context, percentage: .5))
                        .width(pSw(context: context))
                        .safeArea()
                        .decorated(color: onBoradingData[index]['color']),
                    verticalSpaceMedium,
                    CustomText(
                      text: onBoradingData[index]['title'],
                      color: kcPrimaryColor,
                      weight: FontWeight.bold,
                      size: pSh(context: context, percentage: .025),
                    ),
                    verticalSpaceSmall,
                    verticalSpaceSmall,
                    verticalSpaceTiny,
                    CustomText(
                      text: onBoradingData[index]['subTitle'],
                      textAlign: TextAlign.center,
                      color: kcTextColor,
                      weight: FontWeight.w500,
                      size: pSh(context: context, percentage: .018),
                    ).width(pSw(context: context, percentage: .9)),
                  ],
                ).width(pSw(context: context)).decorated();
              }).expanded(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: onBoradingData.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container()
                      .height(pSh(context: context, percentage: .010))
                      .width(pSh(context: context, percentage: .010))
                      .decorated(
                          color: index == viewModel.page
                              ? kcPrimaryColor
                              : kcTextColor.withOpacity(.2),
                          shape: BoxShape.circle)
                      .padding(right: pSh(context: context, percentage: .008));
                },
              )
                  .height(pSh(context: context, percentage: .02))
                  .width(pSw(context: context, percentage: .1)),

              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     for (var item in onBoradingData)
              //       Container()
              //           .height(pSh(context: context, percentage: .010))
              //           .width(pSh(context: context, percentage: .010))
              //           .decorated(
              //               color: kcTextColor.withOpacity(.2),
              //               shape: BoxShape.circle)
              //           .padding(
              //               right: pSh(context: context, percentage: .008)),
              //   ],
              // ).width(pSw(context: context)),
              verticalSpaceMedium,
              verticalSpaceMedium,
              verticalSpaceMedium,
              CustomButton(
                text: 'Skip',
                backgroundColor: kcBackgroundColor,
                textColor: kcPrimaryColor,
                hasBorder: true,
                onTap: () {
                  viewModel.nextPage();
                },
              ),
              verticalSpaceMedium,
              CustomButton(
                text: 'Sign Up',
                isGradient: true,
                onTap: () {
                  viewModel.goToSignUp();
                },
              ),
            ],
          ).padding(all: pSh(context: context, percentage: .02))
        ],
      ),
    );
  }

  @override
  OnboardingViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      OnboardingViewModel();
}
