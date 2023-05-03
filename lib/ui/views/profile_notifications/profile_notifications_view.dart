import 'package:flutter/material.dart';
import 'package:itexc_app/ui/common/app_colors.dart';
import 'package:itexc_app/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';
import 'package:styled_widget/styled_widget.dart';

import '../../widgets/dumb/CustomTabSwitcher.dart';
import '../../widgets/smart/CustomAppBar/custom_app_bar_view.dart';
import 'profile_notifications_viewmodel.dart';

class ProfileNotificationsView
    extends StackedView<ProfileNotificationsViewModel> {
  const ProfileNotificationsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ProfileNotificationsViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: kcBackgroundColor,
      body: Column(
        children: [
          CustomAppBarView(title: 'Notification'),
          verticalSpaceMedium,
          CustomTabSwitcher(
            title: 'Notifications',
            status: true,
          ),
          CustomTabSwitcher(
            title: 'Vibrate',
            status: true,
          ),
          CustomTabSwitcher(
            title: 'New tips available',
            status: false,
          ),
          CustomTabSwitcher(
            title: 'New service Availble',
            status: false,
          ),
        ],
      ).safeArea().padding(all: pSh(context: context, percentage: .025)),
    );
  }

  @override
  ProfileNotificationsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ProfileNotificationsViewModel();
}
