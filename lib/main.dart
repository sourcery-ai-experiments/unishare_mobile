import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:unishare/app/modules/admin/dashboard_admin.dart';
import 'package:unishare/app/modules/splashscreen/views/splash_screen.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options:  DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: SplashScreen(),
    ),
  ));
}
