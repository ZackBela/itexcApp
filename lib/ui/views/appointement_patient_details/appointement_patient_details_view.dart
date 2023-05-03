import 'package:flutter/material.dart';
import 'package:itexc_app/ui/common/app_colors.dart';
import 'package:itexc_app/ui/common/ui_helpers.dart';
import 'package:itexc_app/ui/widgets/dumb/CustomButton.dart';
import 'package:stacked/stacked.dart';
import 'package:styled_widget/styled_widget.dart';

import '../../widgets/dumb/CustomText.dart';
import '../../widgets/dumb/CustomTextField.dart';
import '../../widgets/smart/CustomAppBar/custom_app_bar_view.dart';
import 'appointement_patient_details_viewmodel.dart';

class AppointementPatientDetailsView
    extends StackedView<AppointementPatientDetailsViewModel> {
  const AppointementPatientDetailsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AppointementPatientDetailsViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: kcBackgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBarView(title: 'Patient Details'),
          verticalSpaceMedium,
          CustomText(
            text: 'Full Name',
            color: kcTextColor,
            weight: FontWeight.w500,
            size: pSh(context: context, percentage: .02),
          ).alignment(Alignment.centerLeft),
          verticalSpaceSmall,
          // verticalSpaceSmall,
          CustomTextField(hintText: 'Full Name'),
          verticalSpaceMedium,
          CustomText(
            text: 'Select your age  Range',
            color: kcTextColor,
            weight: FontWeight.w600,
            size: pSh(context: context, percentage: .017),
          ),
          verticalSpaceSmall,
          ListView.builder(
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return CustomText(
                text: '1-17',
                color: kcPrimaryColor,
              )
                  .center()
                  .padding(vertical: pSh(context: context, percentage: 0.01))
                  .width(pSw(context: context, percentage: .26))
                  .decorated(
                      color: kcBackgroundColor,
                      border: Border.all(color: kcPrimaryColor),
                      borderRadius: BorderRadius.circular(
                          pSh(context: context, percentage: .03)))
                  .padding(right: pSh(context: context, percentage: .01));
            },
          ).height(pSh(context: context, percentage: .05)),
          verticalSpaceMedium,
          CustomText(
            text: 'Phonr number',
            color: kcTextColor,
            weight: FontWeight.w500,
            size: pSh(context: context, percentage: .02),
          ).alignment(Alignment.centerLeft),
          verticalSpaceSmall,
          // verticalSpaceSmall,
          CustomTextField(hintText: 'Phonr number'),
          verticalSpaceMedium,
          CustomText(
            text: 'Gender',
            color: kcTextColor,
            weight: FontWeight.w500,
            size: pSh(context: context, percentage: .02),
          ).alignment(Alignment.centerLeft),
          verticalSpaceSmall,
          // verticalSpaceSmall,
          CustomTextField(hintText: 'Gender'),
          verticalSpaceMedium,
          CustomText(
            text: 'Write your problem',
            color: kcTextColor,
            weight: FontWeight.w500,
            size: pSh(context: context, percentage: .02),
          ).alignment(Alignment.centerLeft),
          verticalSpaceSmall,
          // verticalSpaceSmall,
          CustomTextField(
            hintText: 'Tell doctor abour your problem',
            maxLines: 6,
          ),
          Spacer(),
          CustomButton(
            text: 'Next',
            isGradient: true,
            onTap: () {
              viewModel.showConfirmationDialog();
            },
          )
        ],
      ).safeArea().padding(all: pSh(context: context, percentage: .025)),
    );
  }

  @override
  AppointementPatientDetailsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      AppointementPatientDetailsViewModel();
}
