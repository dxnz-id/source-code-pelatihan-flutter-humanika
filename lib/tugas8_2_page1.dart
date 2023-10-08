// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:latihan_flutter/tugas8_2_page2.dart';

class Tugas82 extends StatefulWidget {
  const Tugas82({Key? key}) : super(key: key);

  @override
  State<Tugas82> createState() => _Tugas82State();
}

TextEditingController namaForm = TextEditingController();
TextEditingController nilaiForm = TextEditingController();
int nilaiInt = int.parse(nilaiForm.text);

String keterangan = "";

class _Tugas82State extends State<Tugas82> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tugas 8_2"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              TextFormField(
                controller: namaForm,
                maxLength: 20,
                decoration: const InputDecoration(
                  labelText: 'Nama',
                  labelStyle: TextStyle(
                    color: Colors.blueGrey,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blueGrey,
                    ),
                  ),
                  helperText: "Masukkan Nama",
                ),
                onChanged: (value) {},
              ),
              TextFormField(
                controller: nilaiForm,
                maxLength: 20,
                decoration: const InputDecoration(
                  labelText: 'Nilai',
                  labelStyle: TextStyle(
                    color: Colors.blueGrey,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blueGrey,
                    ),
                  ),
                  helperText: "Masukkan Nilai",
                ),
                onChanged: (value) {},
              ),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
                onPressed: () {
                  if (nilaiInt <= 100 && nilaiInt >= 90) {
                    keterangan = 'Sangat Baik';
                  } else if (nilaiInt < 90 && nilaiInt >= 70) {
                    keterangan = 'Baik';
                  } else if (nilaiInt < 70 && nilaiInt >= 0) {
                    keterangan = 'Sedang';
                  } else {
                    keterangan = 'Error';
                  }

                  String nama = namaForm.text;
                  int nilai = nilaiInt;
                  String hasil = keterangan;
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Tugas82Page2(
                              nama: nama,
                              nilai: nilai,
                              hasil: hasil,
                            )),
                  );
                },
                child: const Text(
                  "Save",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Text(
                  "Nilai (90-100 = Sangat Baik), 70-90 = Baik, Kurang dari 70 = Sedang"),
            ],
          ),
        ),
      ),
    );
  }
}
