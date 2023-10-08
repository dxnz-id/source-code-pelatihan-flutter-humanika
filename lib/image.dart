// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class LatihanImage extends StatefulWidget {
  const LatihanImage({Key? key}) : super(key: key);

  @override
  State<LatihanImage> createState() => _LatihanImageState();
}

class _LatihanImageState extends State<LatihanImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              // image_network
              Image.network(
                "https://www.benarnews.org/indonesian/berita/prabowo-elektabilitas-pemilu-08142023134823.html/@@images/7e95857f-b7d6-4d2f-8f8d-08906f285351.jpeg",
                width: 200.0,
                height: 200.0,
                fit: BoxFit.cover,
              ),

              //image_asset
              Image.asset(
                "assets/images/lbwk.jpg",
                width: 500.0,
                fit: BoxFit.fill,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
