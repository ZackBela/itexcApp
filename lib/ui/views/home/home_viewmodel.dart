import 'package:itexc_app/app/app.bottomsheets.dart';
import 'package:itexc_app/app/app.dialogs.dart';
import 'package:itexc_app/app/app.locator.dart';
import 'package:itexc_app/app/app.router.dart';
import 'package:itexc_app/ui/common/app_strings.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  final _dialogService = locator<DialogService>();
  final _bottomSheetService = locator<BottomSheetService>();
  final _navigationService = locator<NavigationService>();

  String get counterLabel => 'Counter is: $_counter';

  int _counter = 0;
  goToNotifications() {
    _navigationService.navigateToNotificationsView();
  }

  goToFavDoctors() {
    _navigationService.navigateToFavoritesView();
  }

  goToSearch() {
    _navigationService.navigateToSearchScreenView();
  }

  goToSpecialDoctors() {
    _navigationService.navigateToSpecialistiesView();
  }

  goToTopDoctors() {
    _navigationService.navigateToTopDoctorsView();
  }

  goToDoctorPage() {
    _navigationService.navigateToDoctorPageView();
  }

  void incrementCounter() {
    _counter++;
    rebuildUi();
  }

  void showDialog() {
    _dialogService.showCustomDialog(
      variant: DialogType.infoAlert,
      title: 'Stacked Rocks!',
      description: 'Give stacked $_counter stars on Github',
    );
  }

  void showBottomSheet() {
    _bottomSheetService.showCustomSheet(
      variant: BottomSheetType.notice,
      title: ksHomeBottomSheetTitle,
      description: ksHomeBottomSheetDescription,
    );
  }
}
