import 'package:itexc_app/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.bottomsheets.dart';
import '../../../app/app.locator.dart';

class ProfileViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _bottomSheetService = locator<BottomSheetService>();

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

  void showDisconnectBottomSheet() {
    _bottomSheetService.showCustomSheet(
      variant: BottomSheetType.disconnect,
      title: 'ksHomeBottomSheetTitle',
      description: 'ksHomeBottomSheetDescription',
    );
  }
}
