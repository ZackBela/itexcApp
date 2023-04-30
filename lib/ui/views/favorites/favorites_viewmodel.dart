import 'package:itexc_app/app/app.locator.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.bottomsheets.dart';

class FavoritesViewModel extends BaseViewModel {
  final _bottomSheetService = locator<BottomSheetService>();
  void showdeleteFavDoctorBottomSheet() {
    _bottomSheetService.showCustomSheet(
      variant: BottomSheetType.updateFavDoctorStatus,
      title: '',
      description: '',
    );
  }
}
