// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class Tugas81 extends StatefulWidget {
  const Tugas81({Key? key}) : super(key: key);

  @override
  State<Tugas81> createState() => _Tugas81State();
}

TextEditingController angkaTeks = TextEditingController();

class _Tugas81State extends State<Tugas81> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tugas8_1"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const Text("Bilangan Ganjil / Genap"),
              TextFormField(
                controller: angkaTeks,
                maxLength: 20,
                decoration: const InputDecoration(
                  labelText: 'Bilangan',
                  labelStyle: TextStyle(
                    color: Colors.blueGrey,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blueGrey,
                    ),
                  ),
                  helperText: "Masukkan Bilangan",
                ),
                onChanged: (value) {},
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
                onPressed: () {
                  var number = int.parse(angkaTeks.text);
                  if (number % 2 == 0) {
                    const snackBar = SnackBar(
                      content: Text('Bilangan Genap'),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  } else {
                    const snackBar = SnackBar(
                      content: Text('Bilangan Ganjil'),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                },
                child: const Text(
                  "Proses",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
