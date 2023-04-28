import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:itexc_app/app/app.bottomsheets.dart';
import 'package:itexc_app/app/app.dialogs.dart';
import 'package:itexc_app/app/app.locator.dart';
import 'package:itexc_app/app/app.router.dart';
import 'package:itexc_app/ui/common/app_colors.dart';
import 'package:stacked_services/stacked_services.dart';

void main() {
  setupLocator();
  setupDialogUi();
  setupBottomSheetUi();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: Theme.of(context).copyWith(
        primaryColor: kcBackgroundColor,
        focusColor: kcPrimaryColor,
        textTheme: GoogleFonts.sourceSansProTextTheme(),
      ),
      initialRoute: Routes.startupView,
      onGenerateRoute: StackedRouter().onGenerateRoute,
      navigatorKey: StackedService.navigatorKey,
      navigatorObservers: [
        StackedService.routeObserver,
      ],
    );
  }
}
