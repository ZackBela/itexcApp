// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i28;
import 'package:flutter/material.dart';
import 'package:itexc_app/ui/views/appearence/appearence_view.dart' as _i25;
import 'package:itexc_app/ui/views/appointement/appointement_view.dart' as _i19;
import 'package:itexc_app/ui/views/appointement_booking/appointement_booking_view.dart'
    as _i17;
import 'package:itexc_app/ui/views/appointement_page/appointement_page_view.dart'
    as _i20;
import 'package:itexc_app/ui/views/appointement_patient_details/appointement_patient_details_view.dart'
    as _i18;
import 'package:itexc_app/ui/views/doctor_page/doctor_page_view.dart' as _i16;
import 'package:itexc_app/ui/views/favorites/favorites_view.dart' as _i12;
import 'package:itexc_app/ui/views/forget_password/forget_password_view.dart'
    as _i9;
import 'package:itexc_app/ui/views/help/help_view.dart' as _i26;
import 'package:itexc_app/ui/views/history/history_view.dart' as _i21;
import 'package:itexc_app/ui/views/home/home_view.dart' as _i2;
import 'package:itexc_app/ui/views/invite_freinds/invite_freinds_view.dart'
    as _i27;
import 'package:itexc_app/ui/views/landing_page/landing_page_view.dart' as _i5;
import 'package:itexc_app/ui/views/notifications/notifications_view.dart'
    as _i11;
import 'package:itexc_app/ui/views/onboarding/onboarding_view.dart' as _i4;
import 'package:itexc_app/ui/views/principal/principal_view.dart' as _i10;
import 'package:itexc_app/ui/views/profile/profile_view.dart' as _i22;
import 'package:itexc_app/ui/views/profile_details/profile_details_view.dart'
    as _i8;
import 'package:itexc_app/ui/views/profile_notifications/profile_notifications_view.dart'
    as _i23;
import 'package:itexc_app/ui/views/search_screen/search_screen_view.dart'
    as _i13;
import 'package:itexc_app/ui/views/securite/securite_view.dart' as _i24;
import 'package:itexc_app/ui/views/sing_in/sing_in_view.dart' as _i6;
import 'package:itexc_app/ui/views/sing_up/sing_up_view.dart' as _i7;
import 'package:itexc_app/ui/views/specialisties/specialisties_view.dart'
    as _i15;
import 'package:itexc_app/ui/views/startup/startup_view.dart' as _i3;
import 'package:itexc_app/ui/views/top_doctors/top_doctors_view.dart' as _i14;
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i29;

class Routes {
  static const homeView = '/home-view';

  static const startupView = '/startup-view';

  static const onboardingView = '/onboarding-view';

  static const landingPageView = '/landing-page-view';

  static const singInView = '/sing-in-view';

  static const singUpView = '/sing-up-view';

  static const profileDetailsView = '/profile-details-view';

  static const forgetPasswordView = '/forget-password-view';

  static const principalView = '/principal-view';

  static const notificationsView = '/notifications-view';

  static const favoritesView = '/favorites-view';

  static const searchScreenView = '/search-screen-view';

  static const topDoctorsView = '/top-doctors-view';

  static const specialistiesView = '/specialisties-view';

  static const doctorPageView = '/doctor-page-view';

  static const appointementBookingView = '/appointement-booking-view';

  static const appointementPatientDetailsView =
      '/appointement-patient-details-view';

  static const appointementView = '/appointement-view';

  static const appointementPageView = '/appointement-page-view';

  static const historyView = '/history-view';

  static const profileView = '/profile-view';

  static const profileNotificationsView = '/profile-notifications-view';

  static const securiteView = '/securite-view';

  static const appearenceView = '/appearence-view';

  static const helpView = '/help-view';

  static const inviteFreindsView = '/invite-freinds-view';

  static const all = <String>{
    homeView,
    startupView,
    onboardingView,
    landingPageView,
    singInView,
    singUpView,
    profileDetailsView,
    forgetPasswordView,
    principalView,
    notificationsView,
    favoritesView,
    searchScreenView,
    topDoctorsView,
    specialistiesView,
    doctorPageView,
    appointementBookingView,
    appointementPatientDetailsView,
    appointementView,
    appointementPageView,
    historyView,
    profileView,
    profileNotificationsView,
    securiteView,
    appearenceView,
    helpView,
    inviteFreindsView,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.homeView,
      page: _i2.HomeView,
    ),
    _i1.RouteDef(
      Routes.startupView,
      page: _i3.StartupView,
    ),
    _i1.RouteDef(
      Routes.onboardingView,
      page: _i4.OnboardingView,
    ),
    _i1.RouteDef(
      Routes.landingPageView,
      page: _i5.LandingPageView,
    ),
    _i1.RouteDef(
      Routes.singInView,
      page: _i6.SingInView,
    ),
    _i1.RouteDef(
      Routes.singUpView,
      page: _i7.SingUpView,
    ),
    _i1.RouteDef(
      Routes.profileDetailsView,
      page: _i8.ProfileDetailsView,
    ),
    _i1.RouteDef(
      Routes.forgetPasswordView,
      page: _i9.ForgetPasswordView,
    ),
    _i1.RouteDef(
      Routes.principalView,
      page: _i10.PrincipalView,
    ),
    _i1.RouteDef(
      Routes.notificationsView,
      page: _i11.NotificationsView,
    ),
    _i1.RouteDef(
      Routes.favoritesView,
      page: _i12.FavoritesView,
    ),
    _i1.RouteDef(
      Routes.searchScreenView,
      page: _i13.SearchScreenView,
    ),
    _i1.RouteDef(
      Routes.topDoctorsView,
      page: _i14.TopDoctorsView,
    ),
    _i1.RouteDef(
      Routes.specialistiesView,
      page: _i15.SpecialistiesView,
    ),
    _i1.RouteDef(
      Routes.doctorPageView,
      page: _i16.DoctorPageView,
    ),
    _i1.RouteDef(
      Routes.appointementBookingView,
      page: _i17.AppointementBookingView,
    ),
    _i1.RouteDef(
      Routes.appointementPatientDetailsView,
      page: _i18.AppointementPatientDetailsView,
    ),
    _i1.RouteDef(
      Routes.appointementView,
      page: _i19.AppointementView,
    ),
    _i1.RouteDef(
      Routes.appointementPageView,
      page: _i20.AppointementPageView,
    ),
    _i1.RouteDef(
      Routes.historyView,
      page: _i21.HistoryView,
    ),
    _i1.RouteDef(
      Routes.profileView,
      page: _i22.ProfileView,
    ),
    _i1.RouteDef(
      Routes.profileNotificationsView,
      page: _i23.ProfileNotificationsView,
    ),
    _i1.RouteDef(
      Routes.securiteView,
      page: _i24.SecuriteView,
    ),
    _i1.RouteDef(
      Routes.appearenceView,
      page: _i25.AppearenceView,
    ),
    _i1.RouteDef(
      Routes.helpView,
      page: _i26.HelpView,
    ),
    _i1.RouteDef(
      Routes.inviteFreindsView,
      page: _i27.InviteFreindsView,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.HomeView: (data) {
      return _i28.MaterialPageRoute<dynamic>(
        builder: (context) => const _i2.HomeView(),
        settings: data,
      );
    },
    _i3.StartupView: (data) {
      return _i28.MaterialPageRoute<dynamic>(
        builder: (context) => const _i3.StartupView(),
        settings: data,
      );
    },
    _i4.OnboardingView: (data) {
      return _i28.MaterialPageRoute<dynamic>(
        builder: (context) => const _i4.OnboardingView(),
        settings: data,
      );
    },
    _i5.LandingPageView: (data) {
      return _i28.MaterialPageRoute<dynamic>(
        builder: (context) => const _i5.LandingPageView(),
        settings: data,
      );
    },
    _i6.SingInView: (data) {
      return _i28.MaterialPageRoute<dynamic>(
        builder: (context) =>  _i6.SingInView(),
        settings: data,
      );
    },
    _i7.SingUpView: (data) {
      return _i28.MaterialPageRoute<dynamic>(
        builder: (context) =>  _i7.SingUpView(),
        settings: data,
      );
    },
    _i8.ProfileDetailsView: (data) {
      return _i28.MaterialPageRoute<dynamic>(
        builder: (context) => const _i8.ProfileDetailsView(),
        settings: data,
      );
    },
    _i9.ForgetPasswordView: (data) {
      return _i28.MaterialPageRoute<dynamic>(
        builder: (context) => const _i9.ForgetPasswordView(),
        settings: data,
      );
    },
    _i10.PrincipalView: (data) {
      return _i28.MaterialPageRoute<dynamic>(
        builder: (context) => const _i10.PrincipalView(),
        settings: data,
      );
    },
    _i11.NotificationsView: (data) {
      return _i28.MaterialPageRoute<dynamic>(
        builder: (context) => const _i11.NotificationsView(),
        settings: data,
      );
    },
    _i12.FavoritesView: (data) {
      return _i28.MaterialPageRoute<dynamic>(
        builder: (context) => const _i12.FavoritesView(),
        settings: data,
      );
    },
    _i13.SearchScreenView: (data) {
      return _i28.MaterialPageRoute<dynamic>(
        builder: (context) => const _i13.SearchScreenView(),
        settings: data,
      );
    },
    _i14.TopDoctorsView: (data) {
      return _i28.MaterialPageRoute<dynamic>(
        builder: (context) => const _i14.TopDoctorsView(),
        settings: data,
      );
    },
    _i15.SpecialistiesView: (data) {
      return _i28.MaterialPageRoute<dynamic>(
        builder: (context) => const _i15.SpecialistiesView(),
        settings: data,
      );
    },
    _i16.DoctorPageView: (data) {
      return _i28.MaterialPageRoute<dynamic>(
        builder: (context) => const _i16.DoctorPageView(),
        settings: data,
      );
    },
    _i17.AppointementBookingView: (data) {
      return _i28.MaterialPageRoute<dynamic>(
        builder: (context) => const _i17.AppointementBookingView(),
        settings: data,
      );
    },
    _i18.AppointementPatientDetailsView: (data) {
      return _i28.MaterialPageRoute<dynamic>(
        builder: (context) => const _i18.AppointementPatientDetailsView(),
        settings: data,
      );
    },
    _i19.AppointementView: (data) {
      return _i28.MaterialPageRoute<dynamic>(
        builder: (context) => const _i19.AppointementView(),
        settings: data,
      );
    },
    _i20.AppointementPageView: (data) {
      return _i28.MaterialPageRoute<dynamic>(
        builder: (context) => const _i20.AppointementPageView(),
        settings: data,
      );
    },
    _i21.HistoryView: (data) {
      return _i28.MaterialPageRoute<dynamic>(
        builder: (context) => const _i21.HistoryView(),
        settings: data,
      );
    },
    _i22.ProfileView: (data) {
      return _i28.MaterialPageRoute<dynamic>(
        builder: (context) => const _i22.ProfileView(),
        settings: data,
      );
    },
    _i23.ProfileNotificationsView: (data) {
      return _i28.MaterialPageRoute<dynamic>(
        builder: (context) => const _i23.ProfileNotificationsView(),
        settings: data,
      );
    },
    _i24.SecuriteView: (data) {
      return _i28.MaterialPageRoute<dynamic>(
        builder: (context) => const _i24.SecuriteView(),
        settings: data,
      );
    },
    _i25.AppearenceView: (data) {
      return _i28.MaterialPageRoute<dynamic>(
        builder: (context) => const _i25.AppearenceView(),
        settings: data,
      );
    },
    _i26.HelpView: (data) {
      return _i28.MaterialPageRoute<dynamic>(
        builder: (context) => const _i26.HelpView(),
        settings: data,
      );
    },
    _i27.InviteFreindsView: (data) {
      return _i28.MaterialPageRoute<dynamic>(
        builder: (context) => const _i27.InviteFreindsView(),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;
  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

extension NavigatorStateExtension on _i29.NavigationService {
  Future<dynamic> navigateToHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToOnboardingView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.onboardingView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToLandingPageView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.landingPageView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSingInView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.singInView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSingUpView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.singUpView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToProfileDetailsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.profileDetailsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToForgetPasswordView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.forgetPasswordView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToPrincipalView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.principalView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToNotificationsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.notificationsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToFavoritesView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.favoritesView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSearchScreenView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.searchScreenView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToTopDoctorsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.topDoctorsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSpecialistiesView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.specialistiesView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToDoctorPageView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.doctorPageView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToAppointementBookingView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.appointementBookingView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToAppointementPatientDetailsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.appointementPatientDetailsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToAppointementView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.appointementView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToAppointementPageView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.appointementPageView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToHistoryView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.historyView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToProfileView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.profileView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToProfileNotificationsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.profileNotificationsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSecuriteView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.securiteView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToAppearenceView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.appearenceView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToHelpView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.helpView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToInviteFreindsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.inviteFreindsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithOnboardingView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.onboardingView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithLandingPageView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.landingPageView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSingInView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.singInView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSingUpView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.singUpView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithProfileDetailsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.profileDetailsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithForgetPasswordView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.forgetPasswordView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithPrincipalView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.principalView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithNotificationsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.notificationsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithFavoritesView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.favoritesView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSearchScreenView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.searchScreenView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithTopDoctorsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.topDoctorsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSpecialistiesView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.specialistiesView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithDoctorPageView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.doctorPageView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithAppointementBookingView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.appointementBookingView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithAppointementPatientDetailsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.appointementPatientDetailsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithAppointementView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.appointementView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithAppointementPageView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.appointementPageView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithHistoryView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.historyView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithProfileView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.profileView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithProfileNotificationsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.profileNotificationsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSecuriteView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.securiteView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithAppearenceView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.appearenceView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithHelpView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.helpView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithInviteFreindsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.inviteFreindsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
