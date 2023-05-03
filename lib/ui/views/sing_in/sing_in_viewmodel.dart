import 'package:itexc_app/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class SingInViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  goToPrincipal() {
    _navigationService.replaceWithPrincipalView();
  }

  goToForgotPassword() {
    _navigationService.navigateToForgetPasswordView();
  }

  goToSignUp() {
    _navigationService.replaceWithSingUpView();
  }
}
