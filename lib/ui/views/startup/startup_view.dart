import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:itexc_app/ui/common/app_colors.dart';
import 'package:stacked/stacked.dart';
import 'package:itexc_app/ui/common/ui_helpers.dart';
import 'package:styled_widget/styled_widget.dart';

import 'startup_viewmodel.dart';

class StartupView extends StackedView<StartupViewModel> {
  const StartupView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    StartupViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: Container(
        child: Image.asset('assets/images/ItexcLogo.png'),
      )
          .decorated(
              gradient: const LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  stops: [0, 100],
                  colors: [kcPrimaryColor, kcSecondaryColor]))
          .width(pSw(context: context))
          .height(pSh(context: context)),
    );
  }

  @override
  StartupViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      StartupViewModel();

  @override
  void onViewModelReady(StartupViewModel viewModel) => SchedulerBinding.instance
      .addPostFrameCallback((timeStamp) => viewModel.runStartupLogic());
}
