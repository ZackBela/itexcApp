import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'appointement_booking_viewmodel.dart';

class AppointementBookingView
    extends StackedView<AppointementBookingViewModel> {
  const AppointementBookingView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AppointementBookingViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      ),
    );
  }

  @override
  AppointementBookingViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      AppointementBookingViewModel();
}
