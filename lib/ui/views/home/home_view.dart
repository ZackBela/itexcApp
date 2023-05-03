import 'package:flutter/material.dart';
import 'package:itexc_app/ui/common/app_data.dart';
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
                  ontap: () {
                    viewModel.goToNotifications();
                  },
                ),
                horizontalSpaceSmall,
                CustomActionButtom(
                  icon: 'assets/images/heart.png',
                  ontap: () {
                    viewModel.goToFavDoctors();
                  },
                ),
              ],
            ).padding(all: pSh(context: context, percentage: .0)),
            // verticalSpaceMedium,
            verticalSpaceMedium,
            Row(
              children: [
                CustomText(
                  text: 'Find',
                  color: kcTextColor,
                  size: pSh(context: context, percentage: .032),
                ),
                horizontalSpaceTiny,
                CustomText(
                  text: 'your doctor',
                  color: kcTextColor.withOpacity(.5),
                  size: pSh(context: context, percentage: .032),
                ),
              ],
            ),
            verticalSpaceMedium,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(text: 'Search'),
                Image.asset(
                  'assets/images/search.png',
                  height: pSh(context: context, percentage: .025),
                  width: pSh(context: context, percentage: .025),
                )
              ],
            )
                .width(pSw(context: context))
                .height(pSh(context: context, percentage: .03))
                .padding(
                  vertical: pSh(context: context, percentage: .014),
                  horizontal: pSh(context: context, percentage: .02),
                )
                .decorated(
                    color: kcTextColor.withOpacity(.06),
                    borderRadius: BorderRadius.circular(
                        pSh(context: context, percentage: .03)))
                .gestures(onTap: () {
              viewModel.goToSearch();
            }),
            verticalSpaceMedium,
            // verticalSpaceSmall,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: 'Special Doctor',
                  color: kcTextColor,
                  size: pSh(context: context, percentage: .019),
                  weight: FontWeight.bold,
                ),
                CustomText(
                  text: 'View all',
                  color: kcPrimaryColor,
                  size: pSh(context: context, percentage: .018),
                  weight: FontWeight.w500,
                ).gestures(onTap: () {
                  viewModel.goToSpecialDoctors();
                }),
              ],
            ),
            verticalSpaceSmall,
            verticalSpaceSmall,
            Wrap(
              alignment: WrapAlignment.spaceBetween,
              children: [
                for (var item in specialDoctorButonData)
                  SpecialDoctorHomeButon(
                    color: item['color'],
                    icon: item['icon'],
                    text: item['title'],
                  )
                      .width(pSw(context: context, percentage: .2))
                      .padding(bottom: pSh(context: context, percentage: .015)),
              ],
            )
                .padding(horizontal: pSh(context: context, percentage: .01))
                .width(pSw(context: context)),

            verticalSpaceMedium,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: 'Top Doctors',
                  color: kcTextColor,
                  size: pSh(context: context, percentage: .019),
                  weight: FontWeight.bold,
                ),
                CustomText(
                  text: 'View all',
                  color: kcPrimaryColor,
                  size: pSh(context: context, percentage: .017),
                  weight: FontWeight.w500,
                ).gestures(onTap: () {
                  viewModel.goToTopDoctors();
                }),
              ],
            ),
            verticalSpaceSmall,
            verticalSpaceSmall,
            ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return DoctorWidget()
                    .padding(right: pSh(context: context, percentage: .019))
                    .gestures(onTap: () {
                  viewModel.goToDoctorPage();
                });
              },
            ).height(pSh(context: context, percentage: .21)),
          ],
        ).safeArea().padding(all: pSh(context: context, percentage: .025)));
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}

class SpecialDoctorHomeButon extends StatelessWidget {
  SpecialDoctorHomeButon({
    super.key,
    required this.text,
    required this.color,
    required this.icon,
  });
  String? text;
  String? icon;
  Color? color;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Image.asset(
              icon!,
              color: kcBackgroundColor,
              height: pSh(context: context, percentage: .03),
              width: pSh(context: context, percentage: .03),
            ).padding(all: pSh(context: context, percentage: .019)).decorated(
                color: color,
                borderRadius: BorderRadius.circular(
                    pSh(context: context, percentage: .01))),
            Container()
                .height(pSh(context: context, percentage: .032))
                .width(pSh(context: context, percentage: .032))
                .decorated(
                    color: kcBackgroundColor.withOpacity(.2),
                    shape: BoxShape.circle)
                .positioned(top: -7, left: -6)
          ],
        ),
        verticalSpaceTiny,
        CustomText(
          text: text,
          size: pSh(context: context, percentage: .015),
          weight: FontWeight.bold,
        )
      ],
    );
  }
}
