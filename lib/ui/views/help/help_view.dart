import 'package:flutter/material.dart';
import 'package:itexc_app/ui/common/app_colors.dart';
import 'package:itexc_app/ui/common/ui_helpers.dart';
import 'package:itexc_app/ui/widgets/smart/CustomAppBar/custom_app_bar_view.dart';
import 'package:stacked/stacked.dart';
import 'package:styled_widget/styled_widget.dart';

import '../../widgets/dumb/ProfileTab.dart';
import 'help_viewmodel.dart';

class HelpView extends StackedView<HelpViewModel> {
  const HelpView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HelpViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: kcBackgroundColor,
      body: Column(
        children: [
          CustomAppBarView(title: 'Help'),
          verticalSpaceMedium,
          ProfileTab(
            ontap: () {},
            text: 'FAQ',
            iconVisible: false,
          ),
          verticalSpaceSmall,
          ProfileTab(
            ontap: () {},
            text: 'Contact us',
            iconVisible: false,
          ),
          verticalSpaceSmall,
          ProfileTab(
            ontap: () {},
            text: 'Term & Condition',
            iconVisible: false,
          ),
          verticalSpaceSmall,
          ProfileTab(
            ontap: () {},
            text: 'Privacy Policy',
            iconVisible: false,
          ),
        ],
      ).safeArea().padding(all: pSh(context: context, percentage: .025)),
    );
  }

  @override
  HelpViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HelpViewModel();
}
