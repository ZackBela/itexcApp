import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:styled_widget/styled_widget.dart';

import '../../../common/app_colors.dart';
import '../../../common/ui_helpers.dart';
import '../../dumb/CustomActionButtom.dart';
import '../../dumb/CustomText.dart';
import 'custom_app_bar_viewmodel.dart';

class CustomAppBarView extends StackedView<CustomAppBarViewModel> {
  String? title;
  String? icon;
  final Function()? ontap;
  CustomAppBarView({
    Key? key,
    required this.title,
    this.icon = '',
    this.ontap,
  }) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    CustomAppBarViewModel viewModel,
    Widget? child,
  ) {
    return Row(
      children: [
        Icon(
          Icons.arrow_back,
          color: kcPrimaryColor,
        ).padding(all: pSh(context: context, percentage: .01)).gestures(
            onTap: () {
          viewModel.goBack();
        }),
        horizontalSpaceMedium,
        CustomText(
          text: title,
          color: kcTextColor,
          weight: FontWeight.bold,
          size: pSh(context: context, percentage: .024),
        ),
        Spacer(),
        icon == '' ? Container() : CustomActionButtom(icon: icon, ontap: ontap)
      ],
    ).padding(all: pSh(context: context, percentage: .0));
    ;
  }

  @override
  CustomAppBarViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CustomAppBarViewModel();
}
