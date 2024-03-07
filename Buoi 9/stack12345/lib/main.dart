import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Stacked Squares",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Stack(
          children: [
            Container(
              width: width,
              height: height,
              color: Colors.purple,
              child: const Center(
                child: Text(
                  "5",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional.topEnd,
              child: Container(
                width: width / 3,
                height: height / 3 * 2,
                color: Colors.orange,
                child: const Center(
                  child: Text(
                    "2",
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional.bottomEnd,
              child: Container(
                width: width / 3 * 2,
                height: height / 3,
                color: Colors.blue,
                child: const Center(
                  child: Text(
                    "3",
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional.bottomStart,
              child: Container(
                width: width / 3,
                height: height / 3 * 2,
                color: Colors.green,
                child: const Center(
                  child: Text(
                    "4",
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional.topStart,
              child: Container(
                width: width / 3 * 2,
                height: height / 3,
                color: Colors.red,
                child: const Center(
                  child: Text(
                    "1",
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
