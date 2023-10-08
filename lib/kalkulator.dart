// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class Kalkulator extends StatefulWidget {
  const Kalkulator({Key? key}) : super(key: key);

  @override
  State<Kalkulator> createState() => _KalkulatorState();
}

TextEditingController angka1 = TextEditingController();
TextEditingController angka2 = TextEditingController();
double hasil = 0;

class _KalkulatorState extends State<Kalkulator> {
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
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () {
                  var tambah = int.parse(angka1.text) + int.parse(angka2.text);
                  hasil = tambah.toDouble();
                  setState(() {});
                },
                child: const Text("Tambah"),
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
