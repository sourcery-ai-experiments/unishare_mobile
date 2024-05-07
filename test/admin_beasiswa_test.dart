import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:unishare/app/modules/admin/beasiswa/beasiswa_post_admin.dart';
import 'package:unishare/app/modules/admin/beasiswa/make_beasiswa_post.dart';

import 'mock.dart';

void main() {
  group('Admin Beasiswa test group', () {
    setupFirebaseAuthMocks();

    setUpAll(() async {
      await Firebase.initializeApp();
    });

    testWidgets('Verify the presence of widgets', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: BeasiswaAdmin()));

      expect(find.widgetWithText(AppBar, 'Beasiswa'), findsOneWidget);
      expect(find.byType(Column), findsAny);
      expect(find.byType(FloatingActionButton), findsOneWidget);
    });

    testWidgets('Verify the behavior of FloatingActionButton', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: BeasiswaAdmin()));

      await tester.tap(find.byType(FloatingActionButton));
      await tester.pumpAndSettle();

      expect(find.byType(MakeBeasiswaPost), findsOneWidget);
    });

  });
}
