import 'package:unishare/widgets/dadrawer.dart';
import 'package:flutter/material.dart';

class AdminHomePage extends StatelessWidget {
  const AdminHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Unishare Admin',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Color(0xFF252422),
          iconTheme: IconThemeData(color: Colors.white),
        ),
        drawer: DaDrawer());
  }
}
