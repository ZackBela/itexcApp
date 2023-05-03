import 'package:flutter/material.dart';
import 'package:itexc_app/ui/common/app_colors.dart';
import 'package:itexc_app/ui/common/ui_helpers.dart';
import 'package:itexc_app/ui/widgets/dumb/CustomActionButtom.dart';
import 'package:stacked/stacked.dart';
import 'package:styled_widget/styled_widget.dart';

import '../../common/app_data.dart';
import '../../widgets/dumb/CustomText.dart';
import '../../widgets/dumb/CustomTextField.dart';
import '../../widgets/dumb/HorizontalDoctorWidget.dart';
import 'history_viewmodel.dart';

class HistoryView extends StackedView<HistoryViewModel> {
  const HistoryView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HistoryViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: kcBackgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
                text: 'My History',
                color: kcTextColor,
                size: pSh(context: context, percentage: .028),
                weight: FontWeight.bold,
              ),
              Spacer(),
            ],
          ),
          verticalSpaceMedium,
          ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: historyFilter.length,
            itemBuilder: (BuildContext context, int index) {
              return CustomText(
                text: historyFilter[index],
                color: kcPrimaryColor,
              )
                  .center()
                  .padding(horizontal: pSw(context: context, percentage: .05))
                  .decorated(
                      border: Border.all(color: kcPrimaryColor),
                      borderRadius: BorderRadius.circular(
                          pSh(context: context, percentage: .03)))
                  .padding(right: pSh(context: context, percentage: .01));
            },
          ).height(pSh(context: context, percentage: .045)),
          verticalSpaceMedium,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomTextField(
                hintText: 'Search',
                backgroundcolor: Color(0xffF4F6F9),
                suffix: Image.asset(
                  'assets/images/search.png',
                  color: kcTextColor.withOpacity(.2),
                ).padding(horizontal: pSh(context: context, percentage: .019)),
              ).width(pSw(context: context, percentage: .75)),
              CustomActionButtom(icon: 'assets/images/filter.png', ontap: () {})
            ],
          ),
          verticalSpaceMedium,
          CustomText(
            text: 'Today',
            weight: FontWeight.w600,
            color: Color(0xff404345),
          ),
          verticalSpaceMedium,
          ListView.builder(
            itemCount: 4,
            itemBuilder: (BuildContext context, int index) {
              return HorizontalDoctorWidget(
                isHistory: true,
                actionIcon: 'assets/images/Frame (1).png',
              )
                  .padding(bottom: pSh(context: context, percentage: .02))
                  .gestures(onTap: () {
                // viewModel.goToAppointementDetails();
              });
            },
          ).expanded(),
        ],
      ).safeArea().padding(all: pSh(context: context, percentage: .025)),
    );
  }

  @override
  HistoryViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HistoryViewModel();
}
