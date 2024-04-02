import 'package:flutter/material.dart';
import 'package:unishare/app/widgets/dadrawer.dart';

class AdminHomePage extends StatelessWidget {
  const AdminHomePage({Key? key});

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
      body: Column(
        children: [
          Container(child: const Text("Latest Upload", style: TextStyle(),)),
          Expanded(
            child: SizedBox(
              height: double.infinity, // Adjust height as needed
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: 2,
                itemBuilder: (context, index) {
                  return const ListTile(
                    title: Text("Title"),
                    subtitle: Text("Subtitle"),
                  );
                },
              ),
            ),
          ),
        ],
      ),
      drawer: const DaDrawer(),
    );
  }
}
