import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:itexc_app/ui/common/ui_helpers.dart';
import 'package:itexc_app/ui/widgets/dumb/CustomText.dart';
import 'package:styled_widget/styled_widget.dart';

class CustomTabSwitcher extends StatelessWidget {
  CustomTabSwitcher({
    super.key,
    required this.title,
    required this.status,
  });
  String? title;
  bool? status;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(),
        verticalSpaceSmall,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText(
              text: title,
              weight: FontWeight.bold,
            ),
            Switch(value: status!, onChanged: (e) {}),
          ],
        )
      ],
    );
  }
}
