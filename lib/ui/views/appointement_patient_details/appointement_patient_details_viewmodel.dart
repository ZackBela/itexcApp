import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.dialogs.dart';
import '../../../app/app.locator.dart';

class AppointementPatientDetailsViewModel extends BaseViewModel {
  final _dialogService = locator<DialogService>();

  void showConfirmationDialog() {
    _dialogService.showCustomDialog(
      variant: DialogType.appointementConfirmation,
      title: '',
      description: '',
    );
  }
}
