// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class LatihanContainer extends StatefulWidget {
  const LatihanContainer({Key? key}) : super(key: key);

  @override
  State<LatihanContainer> createState() => _LatihanContainerState();
}

class _LatihanContainerState extends State<LatihanContainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Latihan Container"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              // con
              Container(
                // shippet margin
                // m10 = margin
                // ml10 = margin left 
                // mt10 = mmargin top
                // mr10 = margin right
                // mb10 = margin bottom

                margin: const EdgeInsets.only(
                  bottom: 20.0,
                ),

                // shippet padding
                // p10 = padding
                // pl10 = padding left 
                // pt10 = padding top
                // pr10 = padding right
                // pb10 = padding bottom

                padding: const EdgeInsets.all(10.0),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.blue,

                  // radius
                  borderRadius: BorderRadius.all(
                  Radius.circular(5.0),
                  ),

                  // shadow
                  boxShadow: [
                  BoxShadow(
                  color: Colors.grey,
                  blurRadius: 2,
                  offset: Offset(0, 11),
                  ),
                  ],

                  // border
                  border: Border.all(
                  width: 5.0,
                  color: Colors.white!,
                  ),

                ),
                child: Text("Hallo",
                style: TextStyle(
                fontSize: 14.0,
                // cWhite
                color: Colors.white,
                // bold
                fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
                ),
              ),
              // end of con

              const SizedBox(
                height: 15.0,
              ),

              // conf
              Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.green,
                ),
              ),
              // end of conf

              const SizedBox(
                height: 15.0,
              ),

              // contrad
              Container(
                height: 100.0,
                decoration: const BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      8.0,
                    ),
                  ),
                ),
              ),
              // end of contrad

              const SizedBox(
                height: 15.0,
              ),

              // conimage
              Container(
                height: 160.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://images.unsplash.com/photo-1533050487297-09b450131914?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      8.0,
                    ),
                  ),
                ),
              ),
              // end of conimage

              const SizedBox(
                height: 15.0,
              ),

              // confav
              Container(
                height: 164.0,
                width: 164.0,
                clipBehavior: Clip.hardEdge,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://images.unsplash.com/photo-1626982680798-ec99e2aef288?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      8.0,
                    ),
                  ),
                ),
                child: Stack(
                  children: [
                    Container(
                      color: Colors.black26,
                    ),
                    Positioned(
                      right: 0,
                      top: 0,
                      child: IconButton(
                        onPressed: () {},
                        icon: CircleAvatar(
                          backgroundColor:
                              Theme.of(context).cardColor.withOpacity(0.6),
                          child: const Icon(
                            Icons.favorite,
                            size: 14.0,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // end of confav

              const SizedBox(
                height: 15.0,
              ),

              // conproduct
              Container(
                height: 164.0,
                width: 164.0,
                clipBehavior: Clip.hardEdge,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://images.unsplash.com/photo-1525201548942-d8732f6617a0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      8.0,
                    ),
                  ),
                ),
                child: Stack(
                  children: [
                    Container(
                      color: Colors.black26,
                    ),
                    Positioned(
                      right: 0,
                      top: 0,
                      child: IconButton(
                        onPressed: () {},
                        icon: CircleAvatar(
                          backgroundColor:
                              Theme.of(context).cardColor.withOpacity(0.6),
                          child: const Icon(
                            Icons.favorite,
                            size: 14.0,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        color: Colors.black54,
                        padding: const EdgeInsets.all(12.0),
                        child: const Text(
                          "How to play guitar for beginner",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // end of conproduct
            ],
          ),
        ),
      ),
    );
  }
}
