// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:latihan_flutter/latihanform.dart';

class Tugas82Page2 extends StatefulWidget {
  final String nama;
  final int nilai;
  final String hasil;
  const Tugas82Page2({
    Key? key,
    required this.nama,
    required this.nilai,
    required this.hasil,
  }) : super(key: key);

  @override
  State<Tugas82Page2> createState() => _Tugas82Page2State();
}

class _Tugas82Page2State extends State<Tugas82Page2> {
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Nama : ${widget.nama}",
              ),
              Text(
                "Nilai : ${widget.nilai}",
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Text("Hasil"),
              Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                  color: Colors.blue,
                ),
                child: Center(
                  child: Text(
                    widget.hasil,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 50.0,
                    ),
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
