import 'package:flutter/material.dart';
import 'package:itexc_app/ui/common/app_colors.dart';
import 'package:itexc_app/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';
import 'package:styled_widget/styled_widget.dart';

import '../../widgets/dumb/CustomTabSwitcher.dart';
import '../../widgets/smart/CustomAppBar/custom_app_bar_view.dart';
import 'securite_viewmodel.dart';

class SecuriteView extends StackedView<SecuriteViewModel> {
  const SecuriteView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SecuriteViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: kcBackgroundColor,
      body: Column(
        children: [
          CustomAppBarView(title: 'Security'),
          verticalSpaceMedium,
          CustomTabSwitcher(
            title: 'FAce ID',
            status: true,
          ),
          CustomTabSwitcher(
            title: 'Remember me',
            status: false,
          ),
          CustomTabSwitcher(
            title: 'Touch ID',
            status: false,
          ),
        ],
      ).safeArea().padding(all: pSh(context: context, percentage: .025)),
    );
  }

  @override
  SecuriteViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SecuriteViewModel();
}
