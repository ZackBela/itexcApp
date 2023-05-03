import 'package:itexc_app/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class ProfileViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  goToNotifications() {
    _navigationService.navigateToProfileNotificationsView();
  }

  goToSecurite() {
    _navigationService.navigateToSecuriteView();
  }

  goToAppearence() {
    _navigationService.navigateToAppearenceView();
  }

  goToHelp() {
    _navigationService.navigateToHelpView();
  }

  goToInviteFreinds() {
    _navigationService.navigateToInviteFreindsView();
  }
}
