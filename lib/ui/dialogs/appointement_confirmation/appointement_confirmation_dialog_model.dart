import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class AppointementConfirmationDialogModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  goBack() {
    _navigationService.back();
  }
}
