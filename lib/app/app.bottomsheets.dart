// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedBottomsheetGenerator
// **************************************************************************

import 'package:stacked_services/stacked_services.dart';

import 'app.locator.dart';
import '../ui/bottom_sheets/disconnect/disconnect_sheet.dart';
import '../ui/bottom_sheets/doctor_share/doctor_share_sheet.dart';
import '../ui/bottom_sheets/notice/notice_sheet.dart';
import '../ui/bottom_sheets/update_fav_doctor_status/update_fav_doctor_status_sheet.dart';

enum BottomSheetType {
  notice,
  updateFavDoctorStatus,
  doctorShare,
  disconnect,
}

void setupBottomSheetUi() {
  final bottomsheetService = locator<BottomSheetService>();

  final Map<BottomSheetType, SheetBuilder> builders = {
    BottomSheetType.notice: (context, request, completer) =>
        NoticeSheet(request: request, completer: completer),
    BottomSheetType.updateFavDoctorStatus: (context, request, completer) =>
        UpdateFavDoctorStatusSheet(request: request, completer: completer),
    BottomSheetType.doctorShare: (context, request, completer) =>
        DoctorShareSheet(request: request, completer: completer),
    BottomSheetType.disconnect: (context, request, completer) =>
        DisconnectSheet(request: request, completer: completer),
  };

  bottomsheetService.setCustomSheetBuilders(builders);
}
