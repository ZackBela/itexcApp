import 'package:flutter/material.dart';
import 'package:itexc_app/ui/common/app_colors.dart';
import 'package:itexc_app/ui/common/ui_helpers.dart';
import 'package:itexc_app/ui/widgets/smart/CustomAppBar/custom_app_bar_view.dart';
import 'package:stacked/stacked.dart';
import 'package:styled_widget/styled_widget.dart';

import 'invite_freinds_viewmodel.dart';

class InviteFreindsView extends StackedView<InviteFreindsViewModel> {
  const InviteFreindsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    InviteFreindsViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: kcBackgroundColor,
      body: Column(
        children: [
          CustomAppBarView(title: 'invite Friends'),
          verticalSpaceMedium,
          ListView.builder(
            itemCount: 1,
            itemBuilder: (BuildContext context, int index) {
              return InviteFreindWidget();
            },
          ).expanded(),
        ],
      ).safeArea().padding(all: pSh(context: context, percentage: .025)),
    );
  }

  @override
  InviteFreindsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      InviteFreindsViewModel();
}

class InviteFreindWidget extends StatelessWidget {
  const InviteFreindWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'assets/images/Image.png',
          height: pSh(context: context, percentage: .1),
          width: pSw(context: context, percentage: .2),
          fit: BoxFit.cover,
        )
            .clipRRect(
              topLeft: pSh(context: context, percentage: .02),
              bottomLeft: pSh(context: context, percentage: .02),
            )
            .decorated(
                color: kcPrimaryColor,
                borderRadius: BorderRadius.only(
                  topLeft:
                      Radius.circular(pSh(context: context, percentage: .02)),
                  bottomLeft:
                      Radius.circular(pSh(context: context, percentage: .02)),
                ))
      ],
    )
        .width(
          pSw(context: context),
        )
        .height(pSh(context: context, percentage: .1))
        .decorated(
            color: kcTextColor,
            borderRadius:
                BorderRadius.circular(pSh(context: context, percentage: .02)));
  }
}
