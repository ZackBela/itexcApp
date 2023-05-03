import 'package:flutter/material.dart';
import 'package:itexc_app/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class ForgetPasswordViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  PageController pagecontroller = PageController();
  int _methodeSelected = 0;
  int _page = 0;
  int get methodeSelected => _methodeSelected;

  updateMethodeSelected(index) {
    _methodeSelected = index;
    rebuildUi();
  }

  GoToHome() {
    _navigationService.replaceWithPrincipalView();
  }

  nextPage() {
    _page++;

    if (_page != 3) {
      pagecontroller.nextPage(
          duration: Duration(milliseconds: 800),
          curve: Curves.fastLinearToSlowEaseIn);
    } else {
      GoToHome();
    }
  }
}
