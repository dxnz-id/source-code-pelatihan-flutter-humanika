// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class Page4 extends StatefulWidget {
  final String nama;
  final String nilai;
  final String hasil;
  const Page4({
    Key? key,
    required this.nama,
    required this.nilai,
    required this.hasil,
  }) : super(key: key);

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page 4"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              // Untuk Melihat data / variabel ya g kita kirimkan
              Text(
                "Nama : ${widget.nama}", // Untuk menampilkan widget.nama_bariabel
                style: const TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Nilai : ${widget.nilai}", // Untuk menampilkan widget.nama_bariabel
                style: const TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Hasil : ${widget.hasil}", // Untuk menampilkan widget.nama_bariabel
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
