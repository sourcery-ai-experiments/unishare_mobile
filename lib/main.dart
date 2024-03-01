import 'package:flutter/material.dart';
import 'package:unishare/app/modules/splashscreen/views/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Memastikan bahwa flutter sudah terinisialisasi
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MaterialApp(
    home: Scaffold(
      body: SplashScreen(
      ),
    ),
  ));
}
