import 'package:flutter/material.dart';
import 'package:itexc_app/ui/common/app_colors.dart';
import 'package:itexc_app/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';
import 'package:styled_widget/styled_widget.dart';

import '../../widgets/dumb/CustomText.dart';
import '../../widgets/dumb/PastAppointemnent.dart';
import '../../widgets/dumb/UpcomingAppointemnent.dart';
import 'appointement_viewmodel.dart';

class AppointementView extends StackedView<AppointementViewModel> {
  const AppointementView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AppointementViewModel viewModel,
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
            ],
          ),
          verticalSpaceMedium,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // horizontalSpaceSmall,
                  CustomText(
                    text: 'Upcoming',
                    color: viewModel.selectedIndex == 0
                        ? kcBackgroundColor
                        : kcPrimaryColor,
                    weight: FontWeight.w600,
                    size: pSh(context: context, percentage: .018),
                  ),
                ],
              )
                  .width(pSw(context: context, percentage: .32))
                  .padding(
                      all: pSh(context: context, percentage: .013),
                      horizontal: pSh(context: context, percentage: .025))
                  .decorated(
                      border: Border.all(
                        color: viewModel.selectedIndex == 0
                            ? kcBackgroundColor
                            : kcPrimaryColor,
                      ),
                      color: viewModel.selectedIndex == 0
                          ? kcPrimaryColor
                          : kcBackgroundColor,
                      borderRadius: BorderRadius.circular(
                          pSh(context: context, percentage: .04)))
                  .gestures(onTap: () {
                viewModel.updateSelectedIndes(0);
              }),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // horizontalSpaceSmall,
                  CustomText(
                    text: 'Past',
                    color: viewModel.selectedIndex == 1
                        ? kcBackgroundColor
                        : kcPrimaryColor,
                    weight: FontWeight.w600,
                    size: pSh(context: context, percentage: .018),
                  ),
                ],
              )
                  .width(pSw(context: context, percentage: .32))
                  .padding(
                      all: pSh(context: context, percentage: .013),
                      horizontal: pSh(context: context, percentage: .025))
                  .decorated(
                      border: Border.all(
                        color: viewModel.selectedIndex == 1
                            ? kcBackgroundColor
                            : kcPrimaryColor,
                      ),
                      color: viewModel.selectedIndex == 1
                          ? kcPrimaryColor
                          : kcBackgroundColor,
                      borderRadius: BorderRadius.circular(
                          pSh(context: context, percentage: .04)))
                  .gestures(onTap: () {
                viewModel.updateSelectedIndes(1);
              }),
            ],
          ),
          verticalSpaceMedium,
          PageView(
            physics: NeverScrollableScrollPhysics(),
            controller: viewModel.controller,
            children: [
              UpcomingAppointemnent(),
              PastAppointemnent(ontap: () {
                viewModel.goToAppointementDetails();
              }),
            ],
          ).expanded()
        ],
      ).safeArea().padding(all: pSh(context: context, percentage: .025)),
    );
  }

  @override
  AppointementViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      AppointementViewModel();
}
