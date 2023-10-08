// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:latihan_flutter/column.dart';
import 'package:latihan_flutter/container.dart';
import 'package:latihan_flutter/image.dart';
import 'package:latihan_flutter/kalkulator.dart';
import 'package:latihan_flutter/latihanform.dart';
import 'package:latihan_flutter/page1.dart';
import 'package:latihan_flutter/pesan.dart';
import 'package:latihan_flutter/row.dart';
import 'package:latihan_flutter/scaffold_menu.dart';
import 'package:latihan_flutter/tugas5_1.dart';
import 'package:latihan_flutter/tugas6.dart';
import 'package:latihan_flutter/tugas7_1.dart';
import 'package:latihan_flutter/tugas7_2.dart';
import 'package:latihan_flutter/tugas8_1.dart';
import 'package:latihan_flutter/tugas8_2_page1.dart';
import 'package:latihan_flutter/tugas8_2_page2.dart';
import 'package:latihan_flutter/tugas8_3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Tugas83(),
    );
  }
}
