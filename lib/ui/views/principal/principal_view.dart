import 'package:flutter/material.dart';
import 'package:itexc_app/ui/common/app_colors.dart';
import 'package:itexc_app/ui/common/ui_helpers.dart';
import 'package:itexc_app/ui/views/home/home_view.dart';
import 'package:stacked/stacked.dart';
import 'package:styled_widget/styled_widget.dart';

import '../../widgets/dumb/BottomNavBarButton.dart';
import 'principal_viewmodel.dart';

class PrincipalView extends StackedView<PrincipalViewModel> {
  const PrincipalView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    PrincipalViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: kcBackgroundColor,
      body: viewModel.getSelectedScreen(viewModel.index),
      bottomNavigationBar: BottomAppBar(
        elevation: 1.0,
        color: kcBackgroundColor,
        child: Container(
          // color: kcPrimaryColor,
          height: pSh(context: context, percentage: 0.11),
          width: pSw(context: context),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BottomNavBarButton(
                isSelected: viewModel.index == 0 ? true : false,
                text: 'Home',
                icon: 'assets/icons/home.svg',
                onTap: () {
                  viewModel.changeSelectedIndex(0);
                },
              ),
              horizontalSpaceSmall,
              BottomNavBarButton(
                isSelected: viewModel.index == 1 ? true : false,
                text: 'Appointment',
                icon: 'assets/icons/agenda.svg',
                onTap: () {
                  viewModel.changeSelectedIndex(1);
                },
              ),
              horizontalSpaceSmall,
              BottomNavBarButton(
                isSelected: viewModel.index == 2 ? true : false,
                text: 'History',
                icon: 'assets/icons/history.svg',
                onTap: () {
                  viewModel.changeSelectedIndex(2);
                },
              ),
              horizontalSpaceSmall,
              BottomNavBarButton(
                isSelected: viewModel.index == 3 ? true : false,
                text: 'Profile',
                icon: 'assets/icons/profile.svg',
                onTap: () {
                  viewModel.changeSelectedIndex(3);
                },
              ),
              horizontalSpaceSmall,
            ],
          ).padding(horizontal: pSh(context: context, percentage: .03)),
        ),
      ),
    );
  }

  @override
  PrincipalViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PrincipalViewModel();
}
