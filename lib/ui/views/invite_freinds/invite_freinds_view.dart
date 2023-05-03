import 'package:flutter/material.dart';
import 'package:itexc_app/ui/common/app_colors.dart';
import 'package:itexc_app/ui/common/ui_helpers.dart';
import 'package:itexc_app/ui/widgets/dumb/CustomText.dart';
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
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return InviteFreindWidget(
                isInvited: index % 2 == 0 ? false : true,
              ).padding(bottom: pSh(context: context, percentage: .019));
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
  InviteFreindWidget({
    super.key,
    required this.isInvited,
  });
  bool? isInvited;
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
                )),
        horizontalSpaceMedium,
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: 'Dr. Eleanor Pena',
              weight: FontWeight.bold,
            ),
            verticalSpaceTiny,
            CustomText(
              text: '+213 5648-756-458',
              size: pSh(context: context, percentage: .016),
            ),
          ],
        ),
        Spacer(),
        CustomText(
          text: isInvited == true ? 'Invited' : 'Invite',
          color: isInvited == true ? kcBackgroundColor : kcPrimaryColor,
        )
            .padding(
                horizontal: pSh(context: context, percentage: .025),
                vertical: pSh(context: context, percentage: .011))
            .decorated(
                color: isInvited == true ? kcPrimaryColor : kcBackgroundColor,
                border: Border.all(color: kcPrimaryColor),
                borderRadius: BorderRadius.circular(
                    pSh(context: context, percentage: .04))),
        horizontalSpaceSmall,
      ],
    )
        .width(
          pSw(context: context),
        )
        .height(pSh(context: context, percentage: .1))
        .decorated(
            // color: kcTextColor,
            border: Border.all(color: kcTextColor.withOpacity(.1)),
            borderRadius:
                BorderRadius.circular(pSh(context: context, percentage: .02)));
  }
}
