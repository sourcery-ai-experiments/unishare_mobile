import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:unishare/app/modules/dashboard/views/dashboard_screen.dart';
import 'package:unishare/app/modules/homescreen/home_screen.dart';
import 'package:unishare/app/modules/karir/karir_page.dart';
import 'package:unishare/app/modules/onboarding/views/onboarding_screen.dart';
import 'package:unishare/widgets/homepage_card.dart';
import 'mock.dart';

import 'test_helper.dart';

void main() {
  group('RegisterPage widget test', () {
    setupFirebaseAuthMocks();

    setUpAll(() async {
      await Firebase.initializeApp();
    });

    testWidgets('Verify the presence of some widgets on the Home Screen',
        (WidgetTester tester) async {
      FlutterError.onError = ignoreOverflowErrors;
      await tester.pumpWidget(const MaterialApp(home: HomeScreen()));

      // Memastikan page pertama yang tampil adalah Dashboard screen
      expect(find.byType(HomeScreen), findsOneWidget);
      expect(find.byType(Dashboard), findsOneWidget);

      // Memastikan text yg ada pada dashboard tampil pada layar
      expect(find.text("Selamat Datang"), findsOneWidget);
      expect(find.text("Milestone"), findsOneWidget);
      expect(find.text("Notifikasi"), findsOneWidget);
      expect(find.text("Beasiswa"), findsAny);
      expect(find.text("Magang"), findsOneWidget);

      expect(find.byType(HomepageCard), findsExactly(6));
    });

    testWidgets(
        'Home screen can navigate to Karir page by tapping navbar icon, and vice versa',
            (WidgetTester tester) async {
          FlutterError.onError = ignoreOverflowErrors;
          await tester.pumpWidget(const MaterialApp(home: HomeScreen()));

          // Verify homepage can navigate to karir page
          await tester.tap(find.byKey(const Key("karir-navbar-button")));
          await tester.pumpAndSettle();
          expect(find.byType(KarirPage), findsOneWidget);
          expect(find.text("Lowongan Kerja"), findsOneWidget);
          expect(find.text("Magang"), findsOneWidget);

          // Verify karir page can navigate back to the home page using the back button on the app bar
          await tester.tap(find.byType(IconButton).first);
          await tester.pumpAndSettle();
          expect(find.byType(HomeScreen), findsOneWidget);

        });
  });
}
