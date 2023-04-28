import 'package:flutter/material.dart';
import 'package:itexc_app/ui/widgets/dumb/CustomText.dart';
import 'package:itexc_app/ui/widgets/dumb/CustomTextField.dart';
import 'package:stacked/stacked.dart';
import 'package:itexc_app/ui/common/app_colors.dart';
import 'package:itexc_app/ui/common/ui_helpers.dart';
import 'package:styled_widget/styled_widget.dart';

import '../../widgets/dumb/CustomActionButtom.dart';
import '../../widgets/dumb/DoctorWidget.dart';
import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
        backgroundColor: kcBackgroundColor,
        body: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/images/ItexcLogo.png',
                  color: kcPrimaryColor,
                  height: pSh(context: context, percentage: .04),
                ),
                horizontalSpaceSmall,
                CustomText(
                  text: 'Doctorek',
                  color: kcTextColor,
                  size: pSh(context: context, percentage: .028),
                  weight: FontWeight.bold,
                ),
                Spacer(),
                CustomActionButtom(
                  icon: 'assets/images/bell.png',
                  ontap: () {},
                ),
                horizontalSpaceSmall,
                CustomActionButtom(
                  icon: 'assets/images/heart.png',
                  ontap: () {},
                ),
              ],
            ).padding(all: pSh(context: context, percentage: .0)),
            verticalSpaceMedium,
            verticalSpaceMedium,
            Row(
              children: [
                CustomText(
                  text: 'Find',
                  color: kcTextColor,
                  size: pSh(context: context, percentage: .035),
                ),
                horizontalSpaceTiny,
                CustomText(
                  text: 'your doctor',
                  color: kcTextColor.withOpacity(.5),
                  size: pSh(context: context, percentage: .035),
                ),
              ],
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
            verticalSpaceSmall,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: 'Special Doctor',
                  color: kcTextColor,
                  size: pSh(context: context, percentage: .021),
                  weight: FontWeight.bold,
                ),
                CustomText(
                  text: 'View all',
                  color: kcPrimaryColor,
                  size: pSh(context: context, percentage: .019),
                  weight: FontWeight.w500,
                ),
              ],
            ),
            verticalSpaceMedium,
            GridView.count(
              crossAxisCount: 4,
              children: [
                Image.asset(
                  'assets/images/bell.png',
                  color: kcBackgroundColor,
                  height: pSh(context: context, percentage: .019),
                  width: pSh(context: context, percentage: .019),
                )
                    .padding(all: pSh(context: context, percentage: .019))
                    .decorated(color: kcPrimaryColor),
                Image.asset('assets/images/bell.png'),
                Image.asset('assets/images/bell.png'),
                Image.asset('assets/images/bell.png'),
                Image.asset('assets/images/bell.png'),
                Image.asset('assets/images/bell.png'),
                Image.asset('assets/images/bell.png'),
                Image.asset('assets/images/bell.png'),
              ],
            ).expanded(),
            verticalSpaceMedium,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: 'Top Doctors',
                  color: kcTextColor,
                  size: pSh(context: context, percentage: .021),
                  weight: FontWeight.bold,
                ),
                CustomText(
                  text: 'View all',
                  color: kcPrimaryColor,
                  size: pSh(context: context, percentage: .019),
                  weight: FontWeight.w500,
                ),
              ],
            ),
            verticalSpaceMedium,
            ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return DoctorWidget()
                    .padding(right: pSh(context: context, percentage: .019));
              },
            ).height(pSh(context: context, percentage: .25)),
          ],
        ).safeArea().padding(all: pSh(context: context, percentage: .025)));
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}