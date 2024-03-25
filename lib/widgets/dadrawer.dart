import 'package:unishare/app/modules/admin/makeacarapost.dart';
import 'package:flutter/material.dart';

class DaDrawer extends StatelessWidget {
  const DaDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xFF252422),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              //logo
              const DrawerHeader(
                child: Center(
                    child: Text(
                  'Unishare',
                  style: TextStyle(fontSize: 50, color: Colors.white),
                )),
              ),

              //home list tile
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: ListTile(
                  title:
                      Text('Dashboard', style: TextStyle(color: Colors.white)),
                  leading: Icon(Icons.home),
                  onTap: () {},
                ),
              ),

              //settings list tile
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: ListTile(
                  title:
                      Text('Buat Karir', style: TextStyle(color: Colors.white)),
                  leading: Icon(Icons.settings),
                  onTap: () {},
                ),
              ),
              //settings list tile
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: ListTile(
                  title:
                      Text('Buat Acara', style: TextStyle(color: Colors.white)),
                  leading: Icon(Icons.settings),
                  onTap: () {
                    Navigator.pop(context);

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MakeAcaraPost(),
                        ));
                  },
                ),
              ),
              //settings list tile
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: ListTile(
                  title: const Text('Buat Beasiswa',
                      style: TextStyle(color: Colors.white)),
                  leading: const Icon(Icons.settings),
                  onTap: () {},
                ),
              ),
            ],
          ),

          //logout list tile
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: ListTile(
              title: const Text('L O G O U T'),
              leading: const Icon(Icons.logout),
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
