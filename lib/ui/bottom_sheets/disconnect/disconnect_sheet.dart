import 'package:flutter/material.dart';
import 'package:itexc_app/ui/common/app_colors.dart';
import 'package:itexc_app/ui/common/ui_helpers.dart';
import 'package:itexc_app/ui/widgets/dumb/CustomButton.dart';
import 'package:itexc_app/ui/widgets/dumb/CustomText.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:styled_widget/styled_widget.dart';

import 'disconnect_sheet_model.dart';

class DisconnectSheet extends StackedView<DisconnectSheetModel> {
  final Function(SheetResponse response)? completer;
  final SheetRequest request;
  const DisconnectSheet({
    Key? key,
    required this.completer,
    required this.request,
  }) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    DisconnectSheetModel viewModel,
    Widget? child,
  ) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/logout.png',
            fit: BoxFit.cover,
            height: pSh(context: context, percentage: .05),
          ),
          verticalSpaceMedium,
          CustomText(
            text: 'Are you sure want to logout',
            weight: FontWeight.bold,
          ),
          verticalSpaceMedium,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomButton(
                text: 'cancel',
                width: .43,
                hasBorder: true,
                backgroundColor: kcBackgroundColor,
                textColor: kcPrimaryColor,
                onTap: () {
                  viewModel.goback();
                },
              ),
              CustomButton(
                text: 'Yes, Logout',
                width: .43,
                onTap: () {
                  viewModel.goHome();
                },
              ),
            ],
          ).width(pSw(context: context))
        ],
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
    );
  }

  @override
  DisconnectSheetModel viewModelBuilder(BuildContext context) =>
      DisconnectSheetModel();
}
