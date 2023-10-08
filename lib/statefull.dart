// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class Statefull extends StatefulWidget {
const Statefull({Key? key}) : super(key: key);

@override
State<Statefull> createState() => _StatefullState();
}

class _StatefullState extends State<Statefull> {
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: const Text("Statefull"),
actions: const [],
),
body: SingleChildScrollView(
child: Container(
padding: const EdgeInsets.all(10.0),
child: Column(
children: [],
),
),
),
);
}
}
