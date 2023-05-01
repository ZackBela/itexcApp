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
import 'package:itexc_app/ui/views/notifications/notifications_view.dart';
import 'package:itexc_app/ui/views/favorites/favorites_view.dart';
import 'package:itexc_app/ui/bottom_sheets/update_fav_doctor_status/update_fav_doctor_status_sheet.dart';
import 'package:itexc_app/ui/views/search_screen/search_screen_view.dart';
import 'package:itexc_app/ui/views/top_doctors/top_doctors_view.dart';
import 'package:itexc_app/ui/views/specialisties/specialisties_view.dart';
import 'package:itexc_app/ui/views/doctor_page/doctor_page_view.dart';
import 'package:itexc_app/ui/bottom_sheets/doctor_share/doctor_share_sheet.dart';
import 'package:itexc_app/ui/views/appointement_booking/appointement_booking_view.dart';
import 'package:itexc_app/ui/views/appointement_patient_details/appointement_patient_details_view.dart';
import 'package:itexc_app/ui/dialogs/appointement_confirmation/appointement_confirmation_dialog.dart';
import 'package:itexc_app/ui/views/appointement/appointement_view.dart';
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
    MaterialRoute(page: NotificationsView),
    MaterialRoute(page: FavoritesView),
    MaterialRoute(page: SearchScreenView),
    MaterialRoute(page: TopDoctorsView),
    MaterialRoute(page: SpecialistiesView),
    MaterialRoute(page: DoctorPageView),
    MaterialRoute(page: AppointementBookingView),
    MaterialRoute(page: AppointementPatientDetailsView),
    MaterialRoute(page: AppointementView),
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
    StackedBottomsheet(classType: UpdateFavDoctorStatusSheet),
    StackedBottomsheet(classType: DoctorShareSheet),
// @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    StackedDialog(classType: AppointementConfirmationDialog),
// @stacked-dialog
  ],
)
class App {}
