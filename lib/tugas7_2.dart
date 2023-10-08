// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class Tugas72 extends StatefulWidget {
  const Tugas72({Key? key}) : super(key: key);

  @override
  State<Tugas72> createState() => _Tugas72State();
}

TextEditingController angka1 = TextEditingController();
TextEditingController angka2 = TextEditingController();
double hasil = 0;

class _Tugas72State extends State<Tugas72> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kalkulator"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              TextFormField(
                controller: angka1,
                maxLength: 20,
                decoration: const InputDecoration(
                  labelText: 'Angka 1',
                  labelStyle: TextStyle(
                    color: Colors.blueGrey,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
                onChanged: (value) {},
              ),
              TextFormField(
                controller: angka2,
                maxLength: 20,
                decoration: const InputDecoration(
                  labelText: 'Angka 2',
                  labelStyle: TextStyle(
                    color: Colors.blueGrey,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
                onChanged: (value) {},
              ),
              Wrap(
                spacing: 16.0,
                runSpacing: 8.0,
                alignment: WrapAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF438E96),
                    ),
                    onPressed: () {
                      var tambah =
                          int.parse(angka1.text) + int.parse(angka2.text);
                      hasil = tambah.toDouble();
                      setState(() {});
                    },
                    child: const Text(
                      "Tambah",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF438E96),
                    ),
                    onPressed: () {
                      var kurang =
                          int.parse(angka1.text) - int.parse(angka2.text);
                      hasil = kurang.toDouble();
                      setState(() {});
                    },
                    child: const Text(
                      "Kurang",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF438E96),
                    ),
                    onPressed: () {
                      var kali =
                          int.parse(angka1.text) * int.parse(angka2.text);
                      hasil = kali.toDouble();
                      setState(() {});
                    },
                    child: const Text(
                      "Kali",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF438E96),
                    ),
                    onPressed: () {
                      var bagi =
                          int.parse(angka1.text) / int.parse(angka2.text);
                      hasil = bagi.toDouble();
                      setState(() {});
                    },
                    child: const Text(
                      "Bagi",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF438E96),
                    ),
                    onPressed: () {
                      var sisaBagi =
                          int.parse(angka1.text) % int.parse(angka2.text);
                      hasil = sisaBagi.toDouble();
                      setState(() {});
                    },
                    child: const Text(
                      "Sisa Bagi",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                "hasil = $hasil",
                style: const TextStyle(
                  fontSize: 14.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
