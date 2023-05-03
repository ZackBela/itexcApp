import 'package:flutter/material.dart';
import 'package:itexc_app/ui/common/app_colors.dart';
import 'package:itexc_app/ui/views/appointement/appointement_view.dart';
import 'package:itexc_app/ui/views/history/history_view.dart';
import 'package:itexc_app/ui/views/home/home_view.dart';
import 'package:itexc_app/ui/views/profile/profile_view.dart';
import 'package:stacked/stacked.dart';

class PrincipalViewModel extends BaseViewModel {
  int _index = 0;
  int get index => _index;

  changeSelectedIndex(newIndex) {
    _index = newIndex;
    rebuildUi();
  }

  Widget getSelectedScreen(int index) {
    Widget selectedScreen = HomeView();
    switch (index) {
      case 0:
        selectedScreen = HomeView();
        break;
      case 1:
        selectedScreen = AppointementView();
        break;
      case 2:
        selectedScreen = HistoryView();
        break;
      case 3:
        selectedScreen = ProfileView();
        break;

      default:
        selectedScreen = HomeView();
        break;
    }
    return selectedScreen;
  }
}
