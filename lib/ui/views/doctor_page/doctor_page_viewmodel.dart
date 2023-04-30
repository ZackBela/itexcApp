import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.bottomsheets.dart';
import '../../../app/app.locator.dart';

class DoctorPageViewModel extends BaseViewModel {
  final _bottomSheetService = locator<BottomSheetService>();
  int _timeSelected = -1;
  int get timeSelected => _timeSelected;

  updateTimeSelected(index) {
    _timeSelected = index;
    rebuildUi();
  }

  void showShareBottomSheet() {
    _bottomSheetService.showCustomSheet(
      variant: BottomSheetType.doctorShare,
      title: 'ksHomeBottomSheetTitle',
      description: 'ksHomeBottomSheetDescription',
    );
  }
}
