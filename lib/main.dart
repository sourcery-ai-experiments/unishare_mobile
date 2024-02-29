import 'package:flutter/material.dart';
import 'package:unishare_mobile/app/modules/dashboard/views/dashboard_screen.dart';

void main() {
  runApp(const MaterialApp(
    home: SafeArea(
      child: Scaffold(
        body: Homepage(),
      ),
    ),
  ));
}
