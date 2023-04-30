import 'package:flutter/material.dart';
import 'package:itexc_app/ui/common/app_colors.dart';
import 'package:itexc_app/ui/common/ui_helpers.dart';
import 'package:itexc_app/ui/widgets/dumb/CustomButton.dart';
import 'package:stacked/stacked.dart';
import 'package:styled_widget/styled_widget.dart';

import '../../widgets/dumb/CustomActionButtom.dart';
import '../../widgets/dumb/CustomText.dart';
import 'doctor_page_viewmodel.dart';

class DoctorPageView extends StackedView<DoctorPageViewModel> {
  const DoctorPageView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    DoctorPageViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: kcBackgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.arrow_back,
                color: kcPrimaryColor,
              ),
              horizontalSpaceSmall,
              horizontalSpaceSmall,
              CustomText(
                text: 'Dr . seddik walid',
                color: kcTextColor,
                size: pSh(context: context, percentage: .023),
                weight: FontWeight.bold,
              ),
              Spacer(),
              CustomActionButtom(
                icon: 'assets/images/heart.png',
                ontap: () {},
              ),
              horizontalSpaceSmall,
              CustomActionButtom(
                icon: 'assets/images/share 1.png',
                ontap: () {
                  viewModel.showShareBottomSheet();
                },
              ),
            ],
          ).padding(all: pSh(context: context, percentage: .0)).center(),
          verticalSpaceMedium,
          ListView(physics: BouncingScrollPhysics(), children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container()
                        .height(pSh(context: context, percentage: .1))
                        .width(pSh(context: context, percentage: .1))
                        .decorated(
                            color: kcTextColor.withOpacity(.08),
                            shape: BoxShape.circle),
                    verticalSpaceSmall,
                    CustomText(
                      text: 'Dr. seddik walid',
                      size: pSh(context: context, percentage: .02),
                      weight: FontWeight.w600,
                    ),
                    verticalSpaceSmall,
                    CustomText(
                      text: 'Viralogist',
                      size: pSh(context: context, percentage: .017),
                      weight: FontWeight.w600,
                      color: Color(0xff6B779A),
                    ),
                  ],
                ).center(),
                verticalSpaceSmall,
                verticalSpaceMedium,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DoctorStats(),
                    DoctorStats(),
                    DoctorStats(),
                  ],
                ),
                verticalSpaceMedium,
                verticalSpaceSmall,
                CustomText(
                  text: 'About Doctor',
                  size: pSh(context: context, percentage: .02),
                  weight: FontWeight.w600,
                ),
                verticalSpaceSmall,
                CustomText(
                  text:
                      'Dr. Bellamy Nicholas is a top specialist at London Bridge Hospital at London. He has achieved several awards and recognition for is contribution and service in his own field. He is available for private consultation. ',
                  size: pSh(context: context, percentage: .016),
                  weight: FontWeight.w500,
                  color: Color(0xff6B779A),
                ).width(pSw(context: context, percentage: .8)),
                verticalSpaceSmall,
                verticalSpaceMedium,
                CustomText(
                  text: 'Working time',
                  size: pSh(context: context, percentage: .02),
                  weight: FontWeight.w600,
                ),
                verticalSpaceSmall,
                CustomText(
                  text: 'Mon - Sat (08:30 AM - 09:00 PM)',
                  size: pSh(context: context, percentage: .016),
                  weight: FontWeight.w600,
                  color: Color(0xff6B779A),
                ),
                verticalSpaceMedium,
                CustomText(
                  text: 'Make Appointment',
                  size: pSh(context: context, percentage: .02),
                  weight: FontWeight.w600,
                ),
                verticalSpaceMedium,
                ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomText(
                          text: '13',
                          size: pSh(context: context, percentage: .02),
                          weight: FontWeight.w600,
                          color: viewModel.timeSelected == index
                              ? kcBackgroundColor
                              : Color(0xff6B779A),
                        ),
                        verticalSpaceSmall,
                        CustomText(
                          text: 'Mon',
                          size: pSh(context: context, percentage: .02),
                          weight: FontWeight.w600,
                          color: viewModel.timeSelected == index
                              ? kcBackgroundColor
                              : Color(0xff6B779A),
                        ),
                      ],
                    )
                        .width(pSw(context: context, percentage: .21))
                        .decorated(
                            color: viewModel.timeSelected == index
                                ? kcPrimaryColor
                                : kcBackgroundColor,
                            border: Border.all(
                              color: viewModel.timeSelected == index
                                  ? Colors.transparent
                                  : Color(0xff6B779A).withOpacity(.2),
                            ),
                            borderRadius: BorderRadius.circular(
                                pSh(context: context, percentage: .008)))
                        .padding(right: pSh(context: context, percentage: .019))
                        .gestures(onTap: () {
                      viewModel.updateTimeSelected(index);
                    });
                  },
                ).height(pSh(context: context, percentage: .14)),
              ],
            ),
          ]).expanded(),
          verticalSpaceMedium,
          CustomButton(
            text: 'Book Appointment',
            backgroundColor: viewModel.timeSelected != -1
                ? kcPrimaryColor
                : kcPrimaryColor.withOpacity(.3),
          )
        ],
      )
          .safeArea()
          .width(pSw(context: context))
          .padding(all: pSh(context: context, percentage: .025)),
    );
  }

  @override
  DoctorPageViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      DoctorPageViewModel();
}

class DoctorStats extends StatelessWidget {
  const DoctorStats({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(
              'assets/images/people.png',
              height: pSh(context: context, percentage: .025),
              width: pSh(context: context, percentage: .025),
            ),
          ],
        )
            .padding(vertical: pSh(context: context, percentage: .01))
            .height(pSh(context: context, percentage: .07))
            .width(pSw(context: context, percentage: .12))
            .decorated(
                color: Color(0xff7ACEFA).withOpacity(.15),
                borderRadius: BorderRadius.only(
                  bottomLeft:
                      Radius.circular(pSh(context: context, percentage: .01)),
                  bottomRight:
                      Radius.circular(pSh(context: context, percentage: .01)),
                )),
        Spacer(),
        CustomText(
          text: '1000+',
          size: pSh(context: context, percentage: .018),
          weight: FontWeight.w600,
          color: kcTextColor,
        ),
        verticalSpaceTiny,
        CustomText(
          text: 'Patients',
          size: pSh(context: context, percentage: .015),
          weight: FontWeight.w500,
          color: Color(0xff6B779A),
        ),
        verticalSpaceTiny,
        verticalSpaceTiny,
      ],
    )
        .height(pSh(context: context, percentage: .15))
        .width(pSw(context: context, percentage: .25))
        .decorated(
            color: kcBackgroundColor,
            boxShadow: [
              BoxShadow(
                color: Color(0xff6B779A).withOpacity(0.05),
                spreadRadius: 0,
                blurRadius: 25,
                offset: Offset(0, 10), // changes position of shadow
              ),
            ],
            borderRadius:
                BorderRadius.circular(pSh(context: context, percentage: .008)));
  }
}
