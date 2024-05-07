import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:unishare/app/modules/admin/acara/views/make_acara_post_screen.dart';
import 'package:unishare/app/modules/admin/karir/karirpostadmin.dart';
import 'package:unishare/app/modules/profil/profil_page.dart';
import 'package:unishare/app/widgets/card/adminpost.dart';

import 'mock.dart';
import 'test_helper.dart';

void main() {
  group('Profile page test group', () {
    setupFirebaseAuthMocks();

    setUpAll(() async {
      await Firebase.initializeApp();
    });

    testWidgets('Verify the presence of widgets', (WidgetTester tester) async {
      FlutterError.onError = ignoreOverflowErrors;
      await tester.pumpWidget(
        MaterialApp(
          home: ProfilPage(
            namaController: TextEditingController(text: 'John Doe'),
            emailController:
                TextEditingController(text: 'john.doe@example.com'),
            passwordController: TextEditingController(),
            alamatController: TextEditingController(text: '123 Main Street'),
          ),
        ),
      );

      expect(find.widgetWithText(AppBar, 'Profil'), findsOneWidget);
      expect(find.byType(TextFormField), findsExactly(4));
      expect(find.byType(CircleAvatar), findsOneWidget);
    });
  });
}
