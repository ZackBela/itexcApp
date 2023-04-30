import 'package:flutter/material.dart';
import 'package:itexc_app/ui/common/app_colors.dart';
import 'package:itexc_app/ui/common/ui_helpers.dart';
import 'package:itexc_app/ui/widgets/dumb/CustomText.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:styled_widget/styled_widget.dart';

import '../../common/app_data.dart';
import 'doctor_share_sheet_model.dart';

class DoctorShareSheet extends StackedView<DoctorShareSheetModel> {
  final Function(SheetResponse response)? completer;
  final SheetRequest request;
  const DoctorShareSheet({
    Key? key,
    required this.completer,
    required this.request,
  }) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    DoctorShareSheetModel viewModel,
    Widget? child,
  ) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomText(
            text: 'Share',
            weight: FontWeight.bold,
          ),
          verticalSpaceMedium,
          Wrap(
            children: [
              for (var item in socialMedia)
                Column(
                  children: [
                    Image.asset(
                      item['logo'],
                      color: kcPrimaryColor,
                      height: pSh(context: context, percentage: .04),
                    ),
                    verticalSpaceSmall,
                    CustomText(
                      text: item['name'],
                      weight: FontWeight.w600,
                    ),
                  ],
                )
                    .width(pSw(context: context, percentage: .2))
                    .padding(bottom: pSh(context: context, percentage: .05)),
            ],
          )
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(pSh(context: context, percentage: .019)),
          topRight: Radius.circular(pSh(context: context, percentage: .019)),
        ),
      ),
    );
  }

  @override
  DoctorShareSheetModel viewModelBuilder(BuildContext context) =>
      DoctorShareSheetModel();
}
