import 'package:itexc_app/app/app.router.dart';
import 'package:itexc_app/ui/views/sing_in/sing_in_view.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class LandingPageViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  goToSignIn() {
    // _navigationService.clearStackAndShowView(SingInView());
    _navigationService.replaceWithSingInView();
  }

  goToSignUp() {
    _navigationService.replaceWithSingUpView();
  }
}
