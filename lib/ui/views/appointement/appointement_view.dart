import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'appointement_viewmodel.dart';

class AppointementView extends StackedView<AppointementViewModel> {
  const AppointementView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AppointementViewModel viewModel,
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
  AppointementViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      AppointementViewModel();
}
