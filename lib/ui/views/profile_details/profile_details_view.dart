import 'package:flutter/material.dart';
import 'package:itexc_app/ui/common/app_colors.dart';
import 'package:itexc_app/ui/common/ui_helpers.dart';
import 'package:itexc_app/ui/widgets/dumb/CustomButton.dart';
import 'package:itexc_app/ui/widgets/dumb/CustomText.dart';
import 'package:stacked/stacked.dart';
import 'package:styled_widget/styled_widget.dart';

import '../../widgets/dumb/CustomAppBar.dart';
import '../../widgets/dumb/CustomTextField.dart';
import 'profile_details_viewmodel.dart';

class ProfileDetailsView extends StackedView<ProfileDetailsViewModel> {
  const ProfileDetailsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ProfileDetailsViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: kcBackgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomAppBar(
            title: 'Profile Details',
          ),
          verticalSpaceSmall,
          verticalSpaceTiny,
          Container(
            child: Image.asset(
              'assets/images/person.png',
              height: pSh(context: context, percentage: .02),
              width: pSh(context: context, percentage: .02),
            ),
          )
              .height(pSh(context: context, percentage: .12))
              .width(pSh(context: context, percentage: .12))
              .decorated(
                  shape: BoxShape.circle,
                  color: Color(0xffD8D8D8),
                  border:
                      Border.all(color: kcTextColor.withOpacity(.4), width: 1)),
          verticalSpaceMedium,
          CustomText(
            text: 'Full Name',
            color: kcTextColor,
            weight: FontWeight.w500,
            size: pSh(context: context, percentage: .018),
          ).alignment(Alignment.centerLeft),
          verticalSpaceSmall,
          // verticalSpaceSmall,
          CustomTextField(hintText: 'Full Name'),
          verticalSpaceSmall,
          verticalSpaceTiny,
          CustomText(
            text: 'Email',
            color: kcTextColor,
            weight: FontWeight.w500,
            size: pSh(context: context, percentage: .018),
          ).alignment(Alignment.centerLeft),
          verticalSpaceSmall,

          CustomTextField(hintText: 'Email'),
          verticalSpaceSmall,
          verticalSpaceTiny,
          CustomText(
            text: 'Gender',
            color: kcTextColor,
            weight: FontWeight.w500,
            size: pSh(context: context, percentage: .018),
          ).alignment(Alignment.centerLeft),
          verticalSpaceSmall,
          // verticalSpaceSmall,
          CustomTextField(hintText: 'Gender'),
          verticalSpaceSmall,
          verticalSpaceTiny,
          CustomText(
            text: 'Date Of birth',
            color: kcTextColor,
            weight: FontWeight.w500,
            size: pSh(context: context, percentage: .018),
          ).alignment(Alignment.centerLeft),
          verticalSpaceSmall,
          // verticalSpaceSmall,
          CustomTextField(hintText: 'Date Of birth'),
          verticalSpaceSmall,
          verticalSpaceTiny,
          CustomText(
            text: 'Address',
            color: kcTextColor,
            weight: FontWeight.w500,
            size: pSh(context: context, percentage: .018),
          ).alignment(Alignment.centerLeft),
          verticalSpaceSmall,
          // verticalSpaceSmall,
          CustomTextField(hintText: 'Address'),
          Spacer(),
          CustomButton(
            text: 'Next',
            isGradient: true,
          ),
          verticalSpaceSmall,
        ],
      )
          .safeArea()
          .height(pSh(context: context))
          .width(pSw(context: context))
          .padding(all: pSh(context: context, percentage: .019)),
    );
  }

  @override
  ProfileDetailsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ProfileDetailsViewModel();
}
