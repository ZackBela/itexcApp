import 'package:stacked/stacked.dart';

class SearchScreenViewModel extends BaseViewModel {
  int _selectedIndex = 0;
  int get selectedIndex => _selectedIndex;
  updateSelectedIndex(int index) {
    _selectedIndex = index;
    rebuildUi();
  }
}
