import 'package:flutter/material.dart';
import 'package:unishare_mobile/app/modules/dashboard/views/dashboard_screen.dart';
import 'package:unishare/app/modules/splashscreen/views/splash_screen.dart';

voidgt main() {
  runApp(const MaterialApp(
    home: SafeArea(
      child: Scaffold(
        body: Homepage(),
      ),
    ),
  ));
}
