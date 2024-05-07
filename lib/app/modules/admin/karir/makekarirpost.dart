import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:unishare/app/modules/admin/karir/karircontroller.dart';
import 'package:unishare/app/modules/admin/karir/karirmodel.dart';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:unishare/app/widgets/file_picker.dart';

class MakeKarirPost extends StatefulWidget {
  MakeKarirPost({Key? key}) : super(key: key);

  @override
  _MakeKarirPostState createState() => _MakeKarirPostState();
}

class _MakeKarirPostState extends State<MakeKarirPost> {
  TextEditingController _posisiController = TextEditingController();
  TextEditingController _lokasiController = TextEditingController();
  TextEditingController _urlController = TextEditingController();
  TextEditingController _deskripsiController = TextEditingController();
  TextEditingController _penyelenggaraController = TextEditingController();
  DateTime? _endDate;

  String temaValue = 'Teknologi';
  String kategoriValue = 'Lowongan Kerja';
  String? _img = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Buat Karir',
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
              'Posisi Karir',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextFormField(
              controller: _posisiController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Posisi tidak boleh kosong';
                }
                return null;
              },
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
            TextFormField(
              controller: _penyelenggaraController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Penyelenggara tidak boleh kosong';
                }
                return null;
              },
            ),
            const SizedBox(height: 20),

            const Text(
              'Lokasi',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextFormField(
              controller: _lokasiController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Penyelenggara tidak boleh kosong';
                }
                return null;
              },
            ),
            const SizedBox(height: 20),

            //link Karir
            const Text(
              'Link Karir',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextFormField(
              controller: _urlController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Link Acara tidak boleh kosong';
                }
                return null;
              },
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
              dropdownValue: temaValue,
              items: const [
                'Teknologi',
                'Sains',
                'Bisnis',
                'Desain',
                'Fotografi',
                'Manajemen'
              ],
              onChanged: (newValue) {
                setState(() {
                  temaValue = newValue!;
                });
              },
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
              dropdownValue: kategoriValue,
              items: const ['Lowongan Kerja', 'Magang'],
              onChanged: (newValue) {
                setState(() {
                  kategoriValue = newValue!;
                });
              },
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
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        8), // Adjust border radius as needed
                    side: const BorderSide(
                      color: Colors.black, // Adjust color of the dashed border
                      width: 2, // Adjust width of the dashed border
                      //style: BorderStyle., // Set border style to dashed
                    ),
                  ),
                ),
              ),
              child: const Text('Open File Picker'),
            ),
            const SizedBox(height: 20),

            //time input
            const Text(
              'Tenggat waktu',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: TextButton.icon(
                    onPressed: () async {
                      final DateTime? pickedDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2100),
                      );
                      if (pickedDate != null) {
                        setState(() {
                          _endDate = pickedDate;
                        });
                      }
                    },
                    icon: Icon(Icons.calendar_today),
                    label: Text(
                      _endDate != null
                          ? '${_endDate!.day}/${_endDate!.month}/${_endDate!.year}'
                          : 'Pilih Tanggal',
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            //banner Karir
            FileInputWidget(
              fileType: 'Banner Karir',
              onSaveToDatabase: (img) {
                _img = img;
              },
            ),
            //file input
            const SizedBox(height: 20),

            //deskripsi Karir
            const Text(
              'Deskripsi Karir',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextFormField(
              controller: _deskripsiController,
              maxLines: null, // Allow for multi-line input
            ),
            const SizedBox(height: 20),

            Center(
              child: ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Color.fromRGBO(247, 86, 0, 1)),
                    padding: MaterialStatePropertyAll(EdgeInsets.only(
                        left: 120, top: 20, right: 120, bottom: 20))),
                onPressed: () {
                  // Defer the validation until after the build method
                  Future.delayed(Duration.zero, () {
                    KarirPost karirPost = KarirPost(
                      tema: temaValue,
                      kategori: kategoriValue,
                      posisi: _posisiController.text,
                      penyelenggara: _penyelenggaraController.text,
                      urlKarir: _urlController.text,
                      lokasi: _lokasiController.text,
                      img: _img,
                      deskripsi: _deskripsiController.text,
                      startDate: Timestamp.now(),
                      endDate: Timestamp.fromDate(_endDate!),
                    );
                    KarirService.addToFirestore(context, karirPost);
                  });
                },
                child: const Text('Unggah',
                    style: TextStyle(color: Colors.black87)),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class MyDropdownButton extends StatelessWidget {
  final String dropdownValue;
  final List<String> items;
  final ValueChanged<String?>? onChanged;

  MyDropdownButton({
    required this.dropdownValue,
    required this.items,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      isExpanded: true,
      value: dropdownValue,
      onChanged: onChanged,
      items: items.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
