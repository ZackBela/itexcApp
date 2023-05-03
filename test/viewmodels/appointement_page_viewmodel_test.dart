import 'package:flutter_test/flutter_test.dart';
import 'package:itexc_app/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('AppointementPageViewModel Tests -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
