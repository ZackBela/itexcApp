import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class SearchScreenViewModel extends BaseViewModel {
  int _selectedIndex = 0;
  int get selectedIndex => _selectedIndex;
  final _navigationService = locator<NavigationService>();
  goBack() {
    _navigationService.back();
  }

  updateSelectedIndex(int index) {
    _selectedIndex = index;
    rebuildUi();
  }
}
