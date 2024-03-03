import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:unishare/app/modules/karir/karir_page.dart';
=======
import 'package:unishare/app/modules/dashboard/views/dashboard_screen.dart';
>>>>>>> fd7fade46ea361fef9a1b2a9c00c28e85ade575d
import 'package:unishare/app/modules/splashscreen/views/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MaterialApp(
    home: Scaffold(
      body: KarirPage(
      ),
    ),
  ));
}
