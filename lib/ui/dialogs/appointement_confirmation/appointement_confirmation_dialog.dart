import 'package:flutter/material.dart';
import 'package:itexc_app/ui/common/app_colors.dart';
import 'package:itexc_app/ui/common/ui_helpers.dart';
import 'package:itexc_app/ui/widgets/dumb/CustomButton.dart';
import 'package:itexc_app/ui/widgets/dumb/CustomText.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import 'appointement_confirmation_dialog_model.dart';

const double _graphicSize = 60;

class AppointementConfirmationDialog
    extends StackedView<AppointementConfirmationDialogModel> {
  final DialogRequest request;
  final Function(DialogResponse) completer;

  const AppointementConfirmationDialog({
    Key? key,
    required this.request,
    required this.completer,
  }) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AppointementConfirmationDialogModel viewModel,
    Widget? child,
  ) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      backgroundColor: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/Group 1370.png',
              height: pSh(context: context, percentage: .2),
            ),
            CustomText(
              text: 'Well Done',
              color: kcPrimaryColor,
              weight: FontWeight.bold,
              size: pSh(context: context, percentage: .028),
            ),
            verticalSpaceSmall,
            CustomText(
              text:
                  'You appointment booking successfully completed . Dr.seddik walid will Message you soon',
              textAlign: TextAlign.center,
            ),
            verticalSpaceMedium,
            CustomButton(
              text: 'Back to home',
              isGradient: true,
              onTap: () {
                viewModel.goBack();
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  AppointementConfirmationDialogModel viewModelBuilder(BuildContext context) =>
      AppointementConfirmationDialogModel();
}
