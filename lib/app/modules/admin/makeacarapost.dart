import 'package:unishare/widgets/datextfield.dart';
import 'package:flutter/material.dart';

class MakeAcaraPost extends StatelessWidget {
  const MakeAcaraPost({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Buat Acara',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF252422),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 15,
            ),
            // judul
            const Text(
              'Judul Acara',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const DaTextField(
              hintText: 'Masukkan Judul Acara',
            ),
            const SizedBox(height: 20),

            //penyelenggara
            const Text(
              'Penyelenggara',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const DaTextField(
              hintText: 'Masukkan Nama Instansi Penyelenggara',
            ),
            const SizedBox(height: 20),

            //link acara
            const Text(
              'Link Acara',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const DaTextField(
              hintText: 'Masukkan Link Acara',
            ),
            const SizedBox(height: 20),

            //tema
            const Text(
              'Tema',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            MyDropdownButton(
              dropdownValue: 'teknologi',
              items: const [
                'teknologi',
                'sains',
                'bisnis',
                'desain',
                'fotografi',
                'manajemen'
              ],
            ),
            const SizedBox(height: 20),

            //kategori
            const Text(
              'Kategori',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            MyDropdownButton(
              dropdownValue: 'kompetisi',
              items: const ['kompetisi', 'workshop', 'seminar'],
            ),
            const SizedBox(height: 20),

            //guidebook
            const Text(
              'Guidebook',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            //file input
            const SizedBox(height: 20),

            //banner acara
            const Text(
              'Banner Acara',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            //file input
            const SizedBox(height: 20),

            //deskripsi acara
            const Text(
              'Link Acara',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const DaTextField(
              hintText: 'Masukkan Link Acara',
            ),
            const SizedBox(height: 20),

            ElevatedButton(
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(
                  Color.fromRGBO(247, 86, 0, 1),
                ),padding: MaterialStatePropertyAll(EdgeInsets.only(left: 150, right: 150, top: 15, bottom: 15), )
              ),
              onPressed: () {
                // Tambahkan logika untuk mengirim formulir
              },
              child: const Text('Unggah', style: TextStyle(color: Colors.white),),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class MyDropdownButton extends StatefulWidget {
  String dropdownValue;
  final List<String> items;

  MyDropdownButton(
      {super.key, required this.dropdownValue, required this.items});

  @override
  // ignore: library_private_types_in_public_api
  _MyDropdownButtonState createState() => _MyDropdownButtonState();
}

class _MyDropdownButtonState extends State<MyDropdownButton> {
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      isExpanded: true,
      value: widget.dropdownValue,
      onChanged: (String? newValue) {
        setState(() {
          widget.dropdownValue = newValue!;
        });
      },
      items: widget.items.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
