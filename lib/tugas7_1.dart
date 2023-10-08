// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class Tugas71 extends StatefulWidget {
  const Tugas71({Key? key}) : super(key: key);

  @override
  State<Tugas71> createState() => _Tugas71State();
}

TextEditingController nama = TextEditingController();
TextEditingController kelas = TextEditingController();
TextEditingController jurusan = TextEditingController();
TextEditingController alamat = TextEditingController();
TextEditingController hobi = TextEditingController();

class _Tugas71State extends State<Tugas71> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tugas7_1"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              TextFormField(
                controller: nama,
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
                ),
                onChanged: (value) {},
              ),
              TextFormField(
                controller: kelas,
                maxLength: 20,
                decoration: const InputDecoration(
                  labelText: 'Kelas',
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
                controller: jurusan,
                maxLength: 20,
                decoration: const InputDecoration(
                  labelText: 'Jurusan',
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
                controller: alamat,
                maxLength: 20,
                decoration: const InputDecoration(
                  labelText: 'Alamat',
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
                controller: hobi,
                maxLength: 20,
                decoration: const InputDecoration(
                  labelText: 'Hobi',
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
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () {
                  setState(() {});
                },
                child: const Text(
                  "Save",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              Text(
                "Nama = ${nama.text}",
                style: const TextStyle(
                  fontSize: 14.0,
                ),
              ),
              Text(
                "Kelas = ${kelas.text}",
                style: const TextStyle(
                  fontSize: 14.0,
                ),
              ),
              Text(
                "Jurusan = ${jurusan.text}",
                style: const TextStyle(
                  fontSize: 14.0,
                ),
              ),
              Text(
                "Alamat = ${alamat.text}",
                style: const TextStyle(
                  fontSize: 14.0,
                ),
              ),
              Text(
                "Hobi = ${hobi.text}",
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
