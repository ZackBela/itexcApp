import 'package:flutter/material.dart';
import 'package:itexc_app/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class AppointementViewModel extends BaseViewModel {
  int _selectedIndex = 0;
  int get selectedIndex => _selectedIndex;
  PageController controller = PageController();
  final _navigationService = locator<NavigationService>();
  goToAppointementDetails() {
    _navigationService.navigateToAppointementPageView();
  }

  updateSelectedIndes(int index) {
    _selectedIndex = index;
    index == 1
        ? controller.nextPage(
            duration: Duration(milliseconds: 800),
            curve: Curves.fastLinearToSlowEaseIn)
        : controller.previousPage(
            duration: Duration(milliseconds: 800),
            curve: Curves.fastLinearToSlowEaseIn);

    rebuildUi();
  }
}
