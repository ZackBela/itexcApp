import 'package:itexc_app/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class DisconnectSheetModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  goback() {
    _navigationService.back();
  }

  goHome() {
    _navigationService.replaceWithLandingPageView();
  }
}
