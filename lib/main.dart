import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:unishare/app/modules/splashscreen/views/splash_screen.dart';
import 'firebase_options.dart';

// import 'package:unishare/app/modules/dashboard/views/dashboard_screen.dart';
import 'package:unishare/app/modules/notification/views/notification_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: NotificationPage(),
    ),
  ));
}
