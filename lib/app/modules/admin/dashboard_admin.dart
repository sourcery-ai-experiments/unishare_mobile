import 'package:unishare/app/widgets/dadrawer.dart';
import 'package:flutter/material.dart';

class AdminHomePage extends StatelessWidget {
  const AdminHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Unishare Admin',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: const Color(0xFF252422),
          iconTheme: const IconThemeData(color: Colors.white),
        ),
        drawer: const DaDrawer());
  }
}
