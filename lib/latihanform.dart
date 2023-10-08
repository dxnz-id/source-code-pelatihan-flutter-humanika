// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class LatihanForm extends StatefulWidget {
  const LatihanForm({Key? key}) : super(key: key);

  @override
  State<LatihanForm> createState() => _LatihanFormState();
}

// tipe variabel, nama --> nama variabel
TextEditingController nama = TextEditingController();

class _LatihanFormState extends State<LatihanForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Latihan Form"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              // form_textfield --> membuat input
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
                  helperText: "What's your name?",
                ),
                onChanged: (value) {},
              ),
              // button --> membuat tombol
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                ),
                onPressed: () {
                  setState(() {});
                },
                child: const Text(
                  "Proses",
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
            ],
          ),
        ),
      ),
    );
  }
}
