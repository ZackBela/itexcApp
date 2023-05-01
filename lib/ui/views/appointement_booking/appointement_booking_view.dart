import 'package:flutter/material.dart';
import 'package:itexc_app/ui/common/app_colors.dart';
import 'package:itexc_app/ui/common/app_data.dart';
import 'package:itexc_app/ui/common/ui_helpers.dart';
import 'package:itexc_app/ui/widgets/dumb/CustomAppBar.dart';
import 'package:itexc_app/ui/widgets/dumb/CustomButton.dart';
import 'package:itexc_app/ui/widgets/dumb/CustomText.dart';
import 'package:stacked/stacked.dart';
import 'package:styled_widget/styled_widget.dart';

import 'appointement_booking_viewmodel.dart';

class AppointementBookingView
    extends StackedView<AppointementBookingViewModel> {
  const AppointementBookingView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AppointementBookingViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: kcBackgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(title: 'Book Appointment'),
          verticalSpaceMedium,
          CustomText(
            text: 'Monday, March 25 2022',
            color: Color(0xff6B779A),
            weight: FontWeight.w600,
            size: pSh(context: context, percentage: .018),
          ),
          verticalSpaceSmall,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/sun.png',
                    height: pSh(context: context, percentage: .03),
                    width: pSh(context: context, percentage: .03),
                  ),
                  horizontalSpaceSmall,
                  CustomText(
                    text: 'Mornning',
                    color: kcPrimaryColor,
                    weight: FontWeight.w600,
                    size: pSh(context: context, percentage: .018),
                  ),
                ],
              )
                  .width(pSw(context: context, percentage: .3))
                  .padding(
                      all: pSh(context: context, percentage: .013),
                      horizontal: pSh(context: context, percentage: .025))
                  .decorated(
                      border: Border.all(color: kcPrimaryColor),
                      color: kcBackgroundColor,
                      borderRadius: BorderRadius.circular(
                          pSh(context: context, percentage: .04))),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/light.png',
                    height: pSh(context: context, percentage: .03),
                    width: pSh(context: context, percentage: .03),
                  ),
                  horizontalSpaceSmall,
                  CustomText(
                    text: 'Evenning',
                    color: kcPrimaryColor,
                    weight: FontWeight.w600,
                    size: pSh(context: context, percentage: .018),
                  ),
                ],
              )
                  .width(pSw(context: context, percentage: .3))
                  .padding(
                      all: pSh(context: context, percentage: .013),
                      horizontal: pSh(context: context, percentage: .025))
                  .decorated(
                      border: Border.all(color: kcPrimaryColor),
                      color: kcBackgroundColor,
                      borderRadius: BorderRadius.circular(
                          pSh(context: context, percentage: .04))),
            ],
          ),
          verticalSpaceMedium,
          CustomText(
            text: 'Choose the Hour',
            color: Color(0xff6B779A),
            weight: FontWeight.w600,
            size: pSh(context: context, percentage: .018),
          ),
          verticalSpaceSmall,
          Wrap(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            // runAlignment: WrapAlignment.spaceBetween,
            children: [
              for (var time in times)
                CustomText(
                  text: time,
                  color: kcPrimaryColor,
                  weight: FontWeight.bold,
                  size: pSh(context: context, percentage: .02),
                )
                    .center()
                    .width(pSw(context: context, percentage: .26))
                    .padding(vertical: pSh(context: context, percentage: .010))
                    .decorated(
                        border: Border.all(color: kcPrimaryColor),
                        color: kcBackgroundColor,
                        borderRadius: BorderRadius.circular(
                            pSh(context: context, percentage: .04)))
                    .padding(
                        right: pSh(context: context, percentage: .01),
                        bottom: pSh(context: context, percentage: .01))
            ],
          ).center(),
          verticalSpaceMedium,
          CustomText(
            text: 'Fee Information',
            color: Color(0xff6B779A),
            weight: FontWeight.w600,
            size: pSh(context: context, percentage: .018),
          ),
          verticalSpaceSmall,
          FeeInfoTab(),
          verticalSpaceSmall,
          FeeInfoTab(),
          verticalSpaceSmall,
          FeeInfoTab(),
          verticalSpaceSmall,
          Spacer(),
          CustomButton(
            text: 'Next',
            backgroundColor: kcPrimaryColor.withOpacity(.5),
          )
        ],
      ).safeArea().padding(all: pSh(context: context, percentage: .025)),
    );
  }

  @override
  AppointementBookingViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      AppointementBookingViewModel();
}

class FeeInfoTab extends StatelessWidget {
  const FeeInfoTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          child: Image.asset('assets/images/chat.png'),
        )
            .height(pSh(context: context, percentage: .07))
            .width(pSh(context: context, percentage: .07))
            .decorated(
                color: kcPrimaryColor.withOpacity(.1), shape: BoxShape.circle),
        horizontalSpaceMedium,
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: 'Messaging',
              weight: FontWeight.bold,
              size: pSh(context: context, percentage: .021),
            ),
            verticalSpaceTiny,
            CustomText(
              text: 'Can messaging with doctor',
              weight: FontWeight.w500,
              size: pSh(context: context, percentage: .016),
            ),
          ],
        ),
        Spacer(),
        CustomText(
          text: '\$5',
          size: pSh(context: context, percentage: .027),
          weight: FontWeight.bold,
          color: kcPrimaryColor,
        )
      ],
    )
        .padding(horizontal: pSh(context: context, percentage: .035))
        .width(pSw(context: context))
        .height(pSh(context: context, percentage: .10))
        .decorated(
            color: kcBackgroundColor,
            border: Border.all(color: kcPrimaryColor.withOpacity(.1)),
            borderRadius:
                BorderRadius.circular(pSh(context: context, percentage: .02)));
  }
}
