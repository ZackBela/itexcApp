import 'package:itexc_app/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:itexc_app/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:itexc_app/ui/views/home/home_view.dart';
import 'package:itexc_app/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:itexc_app/ui/views/onboarding/onboarding_view.dart';
import 'package:itexc_app/ui/views/landing_page/landing_page_view.dart';
import 'package:itexc_app/ui/views/sing_in/sing_in_view.dart';
import 'package:itexc_app/ui/views/sing_up/sing_up_view.dart';
import 'package:itexc_app/ui/views/profile_details/profile_details_view.dart';
import 'package:itexc_app/ui/views/forget_password/forget_password_view.dart';
import 'package:itexc_app/ui/views/principal/principal_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: OnboardingView),
    MaterialRoute(page: LandingPageView),
    MaterialRoute(page: SingInView),
    MaterialRoute(page: SingUpView),
    MaterialRoute(page: ProfileDetailsView),
    MaterialRoute(page: ForgetPasswordView),
    MaterialRoute(page: PrincipalView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    // @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
