import 'package:flutter/material.dart';
import 'package:itexc_app/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class OnboardingViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  PageController pageController = PageController();
  goBack() {
    _navigationService.back();
  }

  goToSignUp() {
    _navigationService.replaceWithSingUpView();
  }
}
