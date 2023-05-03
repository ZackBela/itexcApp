import 'package:flutter/material.dart';
import 'package:itexc_app/ui/common/app_colors.dart';
import 'package:itexc_app/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';
import 'package:styled_widget/styled_widget.dart';

import '../../widgets/dumb/CustomTabSwitcher.dart';
import '../../widgets/smart/CustomAppBar/custom_app_bar_view.dart';
import 'appearence_viewmodel.dart';

class AppearenceView extends StackedView<AppearenceViewModel> {
  const AppearenceView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AppearenceViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: kcBackgroundColor,
      body: Column(
        children: [
          CustomAppBarView(title: 'Apperance'),
          verticalSpaceMedium,
          CustomTabSwitcher(
            title: 'Notification',
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
  AppearenceViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      AppearenceViewModel();
}
