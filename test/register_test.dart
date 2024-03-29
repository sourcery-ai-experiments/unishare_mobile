import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:unishare/app/modules/auth/register/controller/register_controller.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:unishare/app/modules/auth/register/views/register_screen.dart';
import 'package:unishare/app/modules/homescreen/home_screen.dart';
import 'package:unishare/widgets/primary_button.dart';
import 'mock.dart';
import 'package:mockito/mockito.dart';

class MockRegisterService extends Mock implements RegisterService {
  @override
  Future<User?> registerUser(String email, String password, String displayName) async {
    // Always return a successful MockUser instance
    return MockUser();
  }
}

class MockUser extends Mock implements User {
  @override
  String get displayName => 'John Doe';
}


void main() {
  group('RegisterPage widget test', () {
    late MockRegisterService mockRegisterService;
    setupFirebaseAuthMocks();

    setUpAll(() async {
      await Firebase.initializeApp();
      mockRegisterService = MockRegisterService();
    });

    testWidgets('Check if the user cant register with blank text fields', (WidgetTester tester) async {
      // Build our app and trigger a frame
      await tester.pumpWidget(MaterialApp(
        home: RegisterPage(registerService: mockRegisterService),
      ));

      await tester.ensureVisible(find.byType(PrimaryButton));
      await tester.pumpAndSettle();
      await tester.tap(find.byType(PrimaryButton));
      await tester.pumpAndSettle();

      expect(find.byType(HomeScreen), findsNothing);
      expect(find.byType(RegisterPage), findsOneWidget);

    });

    testWidgets('Register Page navigates to Home Screen when credentials are filled',
            (WidgetTester tester) async {
          // Build the RegisterPage with the mock service
          await tester.pumpWidget(MaterialApp(
            home: RegisterPage(registerService: mockRegisterService),
          ));

          // Enter text into the text fields
          await tester.enterText(find.byKey(const Key('fullname-field')), 'John Doe');
          await tester.enterText(find.byKey(const Key('email-field')), 'john@example.com');
          await tester.enterText(find.byKey(const Key('password-field')), 'password123');

          // Tap the "Daftar Akun" button
          await tester.ensureVisible(find.byType(PrimaryButton));
          await tester.pumpAndSettle();
          await tester.tap(find.byType(PrimaryButton));
          await tester.pumpAndSettle();

          // Wait for the navigation to complete
          await tester.pumpAndSettle();
          expect(find.byType(HomeScreen), findsOneWidget);
        });

  });

}
