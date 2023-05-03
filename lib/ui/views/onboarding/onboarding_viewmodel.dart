import 'package:flutter/material.dart';
import 'package:itexc_app/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class OnboardingViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  PageController pageController = PageController();

  int _page = 0;
  int get page => _page;

  nextPage() {
    _page++;
    rebuildUi();
    if (_page != 3) {
      pageController.nextPage(
          duration: Duration(milliseconds: 800),
          curve: Curves.fastLinearToSlowEaseIn);
    } else {
      goToLaaandingPage();
    }
  }

  goBack() {
    _navigationService.back();
  }

  goToLaaandingPage() {
    _navigationService.replaceWithLandingPageView();
  }

  goToSignUp() {
    _navigationService.replaceWithSingUpView();
  }
}
