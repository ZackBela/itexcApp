import 'package:flutter/material.dart';
import 'package:itexc_app/ui/common/app_colors.dart';
import 'package:itexc_app/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';
import 'package:styled_widget/styled_widget.dart';

import '../../widgets/dumb/CustomActionButtom.dart';
import '../../widgets/dumb/CustomText.dart';
import '../../widgets/dumb/ProfileTab.dart';
import 'profile_viewmodel.dart';

class ProfileView extends StackedView<ProfileViewModel> {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ProfileViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: kcBackgroundColor,
      body: Column(
        children: [
          Row(
            children: [
              Image.asset(
                'assets/images/ItexcLogo.png',
                color: kcPrimaryColor,
                height: pSh(context: context, percentage: .04),
              ),
              horizontalSpaceSmall,
              CustomText(
                text: 'Doctorek',
                color: kcTextColor,
                size: pSh(context: context, percentage: .028),
                weight: FontWeight.bold,
              ),
              Spacer(),
              CustomActionButtom(
                icon: 'assets/images/Frame (2).png',
                ontap: () {},
              ),
            ],
          ),
          verticalSpaceMedium,
          Row(
            children: [
              Stack(
                children: [
                  Container()
                      .height(pSh(context: context, percentage: .1))
                      .width(pSh(context: context, percentage: .1))
                      .decorated(
                          color: kcTextColor.withOpacity(.2),
                          shape: BoxShape.circle),
                  Container(
                    child: Image.asset(
                      'assets/images/Frame (2).png',
                      color: kcBackgroundColor,
                    ).padding(all: pSh(context: context, percentage: .005)),
                  )
                      .height(pSh(context: context, percentage: .025))
                      .width(pSh(context: context, percentage: .025))
                      .decorated(
                          color: kcPrimaryColor,
                          border: Border.all(color: kcBackgroundColor),
                          borderRadius: BorderRadius.circular(
                              pSh(context: context, percentage: .005)))
                      .positioned(bottom: 3, right: 3),
                ],
              ),
              horizontalSpaceMedium,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: 'Wido Studio',
                    weight: FontWeight.bold,
                  ),
                  verticalSpaceTiny,
                  CustomText(
                    text: 'widostudio@gmail.com',
                  ),
                ],
              ),
            ],
          ),
          verticalSpaceMedium,
          ProfileTab(
            color: kcPrimaryColor,
            icon: 'assets/images/bell.png',
            text: 'Notifications',
            ontap: () {
              viewModel.goToNotifications();
            },
          ),
          ProfileTab(
            color: kcPrimaryColor,
            icon: 'assets/images/security.png',
            text: 'Security',
            ontap: () {
              viewModel.goToSecurite();
            },
          ),
          ProfileTab(
            color: kcPrimaryColor,
            icon: 'assets/images/Frame (3).png',
            text: 'Appearance',
            ontap: () {
              viewModel.goToAppearence();
            },
          ),
          ProfileTab(
            color: kcPrimaryColor,
            icon: 'assets/images/help.png',
            text: 'Help',
            ontap: () {
              viewModel.goToHelp();
            },
          ),
          ProfileTab(
            color: kcPrimaryColor,
            icon: 'assets/images/peoples.png',
            text: 'invite Freinds',
            ontap: () {
              viewModel.goToInviteFreinds();
            },
          ),
          ProfileTab(
            color: Colors.red,
            icon: 'assets/images/logout.png',
            text: 'Log Out',
            ontap: () {
              viewModel.showDisconnectBottomSheet();
            },
          ),
        ],
      ).safeArea().padding(all: pSh(context: context, percentage: .025)),
    );
  }

  @override
  ProfileViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ProfileViewModel();
}
