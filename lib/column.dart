// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class LatihanColumn extends StatefulWidget {
  const LatihanColumn({Key? key}) : super(key: key);

  @override
  State<LatihanColumn> createState() => _LatihanColumnState();
}

class _LatihanColumnState extends State<LatihanColumn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Latihan Column"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            // crostart --> rata kiri
            // crocenter --> rata tengah
            // croend --> rata kiri
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("text"),
              Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
