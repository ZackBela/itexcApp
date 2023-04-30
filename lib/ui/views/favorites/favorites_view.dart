import 'package:flutter/material.dart';
import 'package:itexc_app/ui/common/app_colors.dart';
import 'package:itexc_app/ui/common/ui_helpers.dart';
import 'package:itexc_app/ui/widgets/dumb/CustomAppBar.dart';
import 'package:itexc_app/ui/widgets/dumb/CustomTextField.dart';
import 'package:itexc_app/ui/widgets/dumb/DoctorWidget.dart';
import 'package:stacked/stacked.dart';
import 'package:styled_widget/styled_widget.dart';

import 'favorites_viewmodel.dart';

class FavoritesView extends StackedView<FavoritesViewModel> {
  const FavoritesView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    FavoritesViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: kcBackgroundColor,
      body: Column(
        children: [
          CustomAppBar(
            title: 'Favorite Doctor',
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
            physics: BouncingScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisSpacing: 30, crossAxisSpacing: 24),
            itemCount: 8,
            itemBuilder: (BuildContext context, int index) {
              return DoctorWidget().gestures(onTap: () {
                viewModel.showdeleteFavDoctorBottomSheet();
              });
            },
          ).expanded(),
        ],
      ).safeArea().padding(all: pSh(context: context, percentage: .025)),
    );
  }

  @override
  FavoritesViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      FavoritesViewModel();
}
