import 'package:flutter/material.dart';
import 'package:itexc_app/ui/common/app_colors.dart';
import 'package:itexc_app/ui/widgets/dumb/CustomAppBar.dart';
import 'package:stacked/stacked.dart';
import 'package:styled_widget/styled_widget.dart';

import '../../common/app_data.dart';
import '../../common/ui_helpers.dart';
import '../../widgets/dumb/CustomText.dart';
import '../../widgets/dumb/CustomTextField.dart';
import '../../widgets/dumb/HorizontalDoctorWidget.dart';
import 'top_doctors_viewmodel.dart';

class TopDoctorsView extends StackedView<TopDoctorsViewModel> {
  const TopDoctorsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    TopDoctorsViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: kcBackgroundColor,
      body: Column(children: [
        CustomAppBar(
          title: 'Top Doctors',
          icon: 'assets/images/filter.png',
        ),
        verticalSpaceMedium,
        ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: specialitiesNames.length,
          physics: BouncingScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return CustomText(
              text: specialitiesNames[index],
              color: viewModel.selectedIndex == index
                  ? kcBackgroundColor
                  : kcPrimaryColor,
            )
                .padding(
                    vertical: pSh(context: context, percentage: .015),
                    horizontal: pSh(context: context, percentage: .03))
                .decorated(
                    color: viewModel.selectedIndex == index
                        ? kcPrimaryColor
                        : kcBackgroundColor,
                    border: Border.all(
                      color: viewModel.selectedIndex == index
                          ? kcBackgroundColor
                          : kcPrimaryColor,
                    ),
                    borderRadius: BorderRadius.circular(
                        pSh(context: context, percentage: .03)))
                .center()
                .padding(right: pSh(context: context, percentage: .02))
                .gestures(onTap: () {
              viewModel.updateSelectedIndex(index);
            });
          },
        ).height(pSh(context: context, percentage: .08)),
        verticalSpaceMedium,
        ListView.builder(
          itemCount: 10,
          physics: BouncingScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return HorizontalDoctorWidget()
                .padding(bottom: pSh(context: context, percentage: .02));
          },
        ).expanded(),
      ]).safeArea().padding(all: pSh(context: context, percentage: .025)),
    );
  }

  @override
  TopDoctorsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      TopDoctorsViewModel();
}
