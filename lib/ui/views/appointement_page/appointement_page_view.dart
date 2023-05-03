import 'package:flutter/material.dart';
import 'package:itexc_app/ui/common/app_colors.dart';
import 'package:itexc_app/ui/common/ui_helpers.dart';
import 'package:itexc_app/ui/widgets/dumb/CustomButton.dart';
import 'package:itexc_app/ui/widgets/smart/CustomAppBar/custom_app_bar_view.dart';
import 'package:stacked/stacked.dart';
import 'package:styled_widget/styled_widget.dart';

import '../../widgets/dumb/CustomText.dart';
import '../doctor_page/doctor_page_view.dart';
import 'appointement_page_viewmodel.dart';

class AppointementPageView extends StackedView<AppointementPageViewModel> {
  const AppointementPageView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AppointementPageViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: kcBackgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBarView(
            title: 'My Appointements',
            icon: 'assets/images/more vert.png',
          ),
          verticalSpaceMedium,
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container()
                  .height(pSh(context: context, percentage: .1))
                  .width(pSh(context: context, percentage: .1))
                  .decorated(
                      color: kcTextColor.withOpacity(.08),
                      shape: BoxShape.circle),
              verticalSpaceSmall,
              CustomText(
                text: 'Dr. Eleanor Pena',
                size: pSh(context: context, percentage: .02),
                weight: FontWeight.w600,
              ),
              verticalSpaceSmall,
              CustomText(
                text: 'Viralogist',
                size: pSh(context: context, percentage: .017),
                weight: FontWeight.w600,
                color: Color(0xff6B779A),
              ),
            ],
          ).center(),
          verticalSpaceMedium,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DoctorStats(),
              DoctorStats(),
              DoctorStats(),
            ],
          ),
          verticalSpaceMedium,
          CustomText(
            text: 'Visit Time',
            weight: FontWeight.bold,
            size: pSh(context: context, percentage: .02),
            color: Color(0xff222b45),
          ),
          verticalSpaceSmall,
          CustomText(
            text: 'Mornning',
            weight: FontWeight.bold,
            size: pSh(context: context, percentage: .016),
          ),
          verticalSpaceSmall,
          CustomText(
            text: 'Monday , March 23 2023',
            weight: FontWeight.bold,
            size: pSh(context: context, percentage: .016),
          ),
          verticalSpaceSmall,
          CustomText(
            text: '10 : 00 - 10 : 30 AM',
            weight: FontWeight.bold,
            size: pSh(context: context, percentage: .016),
          ),
          verticalSpaceMedium,
          CustomText(
            text: 'Patient Information',
            weight: FontWeight.bold,
            size: pSh(context: context, percentage: .02),
            color: Color(0xff222b45),
          ),
          verticalSpaceSmall,
          CustomText(
            text: 'Full Name : seddik walid',
            weight: FontWeight.bold,
            size: pSh(context: context, percentage: .016),
          ),
          verticalSpaceSmall,
          CustomText(
            text: 'Agze : 24- 45',
            weight: FontWeight.bold,
            size: pSh(context: context, percentage: .016),
          ),
          verticalSpaceSmall,
          CustomText(
            text: 'Phone  : + 43 5454-1554-2514',
            weight: FontWeight.bold,
            size: pSh(context: context, percentage: .016),
          ),
          verticalSpaceSmall,
          CustomText(
            text:
                'Comment :  I have had a heart problem for the past 3 days, I often feel tired and out of breath',
            weight: FontWeight.bold,
            size: pSh(context: context, percentage: .016),
          ).width(pSw(context: context, percentage: .7)),
          Spacer(),
          CustomButton(
            text: 'Mark as completed',
            isGradient: true,
          )
        ],
      ).safeArea().padding(all: pSh(context: context, percentage: .025)),
    );
  }

  @override
  AppointementPageViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      AppointementPageViewModel();
}
