import 'package:flutter/material.dart';
import 'package:itexc_app/ui/common/app_colors.dart';
import 'package:itexc_app/ui/common/app_data.dart';
import 'package:itexc_app/ui/common/ui_helpers.dart';
import 'package:itexc_app/ui/widgets/dumb/CustomTextField.dart';
import 'package:stacked/stacked.dart';
import 'package:styled_widget/styled_widget.dart';

import '../../widgets/dumb/CustomText.dart';
import '../../widgets/dumb/HorizontalDoctorWidget.dart';
import 'search_screen_viewmodel.dart';

class SearchScreenView extends StackedView<SearchScreenViewModel> {
  const SearchScreenView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SearchScreenViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: kcBackgroundColor,
      body: Column(children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Icon(
              Icons.arrow_back,
              color: kcPrimaryColor,
            ),
            Spacer(),
            CustomTextField(
              hintText: 'search',
              backgroundcolor: Color(0xffF4F6F9),
              suffix: Image.asset(
                'assets/images/search.png',
                color: kcTextColor.withOpacity(.2),
              ).padding(horizontal: pSh(context: context, percentage: .019)),
            ).width(pSw(context: context, percentage: .75))
          ],
        ).width(pSw(context: context)),
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
  SearchScreenViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SearchScreenViewModel();
}
