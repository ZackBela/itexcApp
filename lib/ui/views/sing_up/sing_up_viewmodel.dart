import 'package:itexc_app/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class SingUpViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  goToProfileDetails() {
    _navigationService.navigateToProfileDetailsView();
  }

  goToForgotPassword() {
    _navigationService.navigateToForgetPasswordView();
  }

  goToSignIn() {
    _navigationService.replaceWithSingInView();
  }
}
