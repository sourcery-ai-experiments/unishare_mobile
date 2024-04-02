import 'package:unishare/widgets/datextfield.dart';
import 'package:flutter/material.dart';

class MakeBeasiswaPost extends StatelessWidget {
  const MakeBeasiswaPost({Key? key});
  //hardwork nagip semua

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Buat Beasiswa',
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
              'Judul Beasiswa',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const DaTextField(
              hintText: 'Masukkan Judul Beasiswa',
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
              'Link Pendaftaran',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const DaTextField(
              hintText: 'Masukkan Link Daftar',
            ),
            const SizedBox(height: 20),

            //tema
            const Text(
              'Jenis Beasiswa',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            MyDropdownButton(
              dropdownValue: 'Swasta',
              items: const [
                'Swasta',
                'Pemerintah',
              ],
            ),
            const SizedBox(height: 20),
            //banner acara
            const Text(
              'Banner Acara',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),

            //file input
            const SizedBox(height: 20),

            const Text(
              'Batas Waktu pendaftaran',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),

            TextField(
              decoration: InputDecoration(
                filled: true,
                prefixIcon: Icon(Icons.calendar_today),
                enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
              ),
              readOnly: true,
              onTap: () {
                // _selectDate();
              },
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                // Tambahkan logika untuk mengirim formulir
              },
              child: const Text('Unggah'),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

// class DatePickerField extends StatefulWidget {
//   final Function(DateTime) onDateSelected; // Callback for selected date
//   final DateTime initialDate; // Optional initial date to display (default: now)

//   const DatePickerField({
//     super.key,
//     required this.onDateSelected,
//     this.initialDate = DateTime.now(),
//   });

//   @override
//   State<DatePickerField> createState() => _DatePickerFieldState();
// }

// class _DatePickerFieldState extends State<DatePickerField> {
//   DateTime _selectedDate = DateTime.now();

//   @override
//   void initState() {
//     super.initState();
//     _selectedDate = widget.initialDate; // Set initial date from widget
//   }

//   Future<void> _selectDate() async {
//     final DateTime? picked = await showDatePicker(
//       context: context,
//       initialDate: _selectedDate,
//       firstDate: DateTime(2000),
//       lastDate: DateTime(2100),
//     );
//     if (picked != null && picked != _selectedDate) {
//       setState(() {
//         _selectedDate = picked;
//       });
//       widget.onDateSelected(_selectedDate); // Call callback with selected date
//     }
//   }
// }

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
