// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class Tugas83 extends StatefulWidget {
  const Tugas83({Key? key}) : super(key: key);

  @override
  State<Tugas83> createState() => _Tugas83State();
}

TextEditingController input = TextEditingController(text: '0');

double celcius = double.parse(input.text);
double reamur = (4 / 5) * celcius;
double fahrenheit = (9 / 5) * celcius + 32;
double kelvin = celcius + 273.15;

class _Tugas83State extends State<Tugas83> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tugas 8_3"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const Text("Konversi Suhu (Celcius)"),
              TextFormField(
                controller: input,
                maxLength: 20,
                decoration: const InputDecoration(
                  labelText: 'Suhu',
                  labelStyle: TextStyle(
                    color: Colors.blueGrey,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blueGrey,
                    ),
                  ),
                  helperText: "Masukkan Suhu",
                ),
                onChanged: (value) {
                  celcius = double.tryParse(value) ?? 0.0;
                  setState(() {});
                },
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                ),
                onPressed: () {
                  reamur = (4 / 5) * celcius;
                  fahrenheit = (9 / 5) * celcius + 32;
                  kelvin = celcius + 273.15;
                  setState(() {});
                },
                child: const Text(
                  "Proses",
                  style: TextStyle(
                    color: Colors.purple,
                  ),
                ),
              ),
              const SizedBox(
                height: 50.0,
              ),
              Text(
                "Reamur : $reamur",
                style: const TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Fahrenheit : $fahrenheit",
                style: const TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Kelvin : $kelvin",
                style: const TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
