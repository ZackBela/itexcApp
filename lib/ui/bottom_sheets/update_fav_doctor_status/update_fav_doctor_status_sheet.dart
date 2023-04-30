import 'package:flutter/material.dart';
import 'package:itexc_app/ui/common/app_colors.dart';
import 'package:itexc_app/ui/common/ui_helpers.dart';
import 'package:itexc_app/ui/widgets/dumb/CustomActionButtom.dart';
import 'package:itexc_app/ui/widgets/dumb/CustomButton.dart';
import 'package:itexc_app/ui/widgets/dumb/CustomText.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:styled_widget/styled_widget.dart';

import '../../widgets/dumb/HorizontalDoctorWidget.dart';
import 'update_fav_doctor_status_sheet_model.dart';

class UpdateFavDoctorStatusSheet
    extends StackedView<UpdateFavDoctorStatusSheetModel> {
  final Function(SheetResponse response)? completer;
  final SheetRequest request;
  const UpdateFavDoctorStatusSheet({
    Key? key,
    required this.completer,
    required this.request,
  }) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    UpdateFavDoctorStatusSheetModel viewModel,
    Widget? child,
  ) {
    return Container(
      padding: EdgeInsets.all(pSh(context: context, percentage: .025)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          HorizontalDoctorWidget(),
          verticalSpaceMedium,
          CustomText(
            text: 'Remove from favoeite ?',
            weight: FontWeight.bold,
          ),
          verticalSpaceMedium,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomButton(
                text: 'cancel',
                hasBorder: true,
                backgroundColor: kcBackgroundColor,
                textColor: kcPrimaryColor,
                width: 0.42,
              ),
              CustomButton(
                text: 'Yes, Remove',
                width: 0.42,
                isGradient: true,
              ),
              // CustomButton(text: 'cancel'),
            ],
          )
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(pSh(context: context, percentage: .02)),
          topRight: Radius.circular(pSh(context: context, percentage: .02)),
        ),
      ),
    );
  }

  @override
  UpdateFavDoctorStatusSheetModel viewModelBuilder(BuildContext context) =>
      UpdateFavDoctorStatusSheetModel();
}
