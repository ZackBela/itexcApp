import 'package:flutter/material.dart';
import 'package:itexc_app/ui/common/app_colors.dart';
import 'package:itexc_app/ui/common/ui_helpers.dart';
import 'package:itexc_app/ui/widgets/dumb/CustomText.dart';
import 'package:itexc_app/ui/widgets/dumb/CustomTextField.dart';
import 'package:stacked/stacked.dart';
import 'package:styled_widget/styled_widget.dart';

import '../../common/app_data.dart';
import '../../widgets/dumb/SpecialityWidget.dart';
import '../../widgets/smart/CustomAppBar/custom_app_bar_view.dart';
import 'specialisties_viewmodel.dart';

class SpecialistiesView extends StackedView<SpecialistiesViewModel> {
  const SpecialistiesView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SpecialistiesViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: kcBackgroundColor,
      body: Column(
        children: [
          CustomAppBarView(
            title: 'Specialist Doctor',
            icon: 'assets/images/filter.png',
          ),
          verticalSpaceMedium,
          CustomTextField(
            hintText: 'Search',
            backgroundcolor: Color(0xffF4F6F9),
            suffix: Image.asset(
              'assets/images/search.png',
              color: kcTextColor.withOpacity(.2),
            ).padding(horizontal: pSh(context: context, percentage: .019)),
          ),
          verticalSpaceMedium,
          GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: pSh(context: context, percentage: .02),
              mainAxisSpacing: pSh(context: context, percentage: .02),
            ),
            itemCount: specialities.length,
            itemBuilder: (BuildContext context, int index) {
              return SpecialityWidget(speciality: specialities[index]);
            },
          ).expanded(),
        ],
      ).safeArea().padding(all: pSh(context: context, percentage: .025)),
    );
  }

  @override
  SpecialistiesViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SpecialistiesViewModel();
}
