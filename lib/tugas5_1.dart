// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class Tugas5 extends StatefulWidget {
  const Tugas5({Key? key}) : super(key: key);

  @override
  State<Tugas5> createState() => _Tugas5State();
}

class _Tugas5State extends State<Tugas5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Tugas 5",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff053B50),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              // Image
              Container(
                margin: const EdgeInsets.all(50.0),
                child: ClipOval(
                  child: Image.asset(
                    "assets/images/user.jpg",
                    width: 150.0,
                    height: 150.0,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              // End of Image

              // Text
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.all(10.0),
                padding: const EdgeInsets.all(15.0),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                  color: Color(0xff176B87),
                ),
                child: Text(
                  "Nama : Muhammad La'azidannak Rusda",
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.white,
                  ),
                ),
              ),

              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.all(10.0),
                padding: const EdgeInsets.all(15.0),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                    color: Color(0xff64CCC5)),
                child: Text(
                  "Kelas : XI A",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.white,
                  ),
                ),
              ),

              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.all(10.0),
                padding: const EdgeInsets.all(15.0),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                  color: Color(0xff176B87),
                ),
                child: Text(
                  "Jurusan : Pengembangan Perangkat Lunak dan Gim",
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.white,
                  ),
                ),
              ),
              // End of Text

              // Logo
              // Container(
              //   height: 100,
              //   width: 100,
              //   decoration: const BoxDecoration(
              //     color: Colors.blue,
              //   ),
              //   child: Image.asset(
              //     "assets/images/myLogo.png",
              //     width: 120.0,
              //     height: 120.0,
              //     fit: BoxFit.fill,
              //   ),
              // ),
              // End of Logo
            ],
          ),
        ),
      ),
    );
  }
}
