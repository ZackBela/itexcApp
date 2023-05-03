import 'package:itexc_app/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class AppointementConfirmationDialogModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  GoHome() {
    _navigationService.replaceWithPrincipalView();
  }
}
