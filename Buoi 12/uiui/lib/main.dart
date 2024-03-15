import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Theme.dart';
import "ThemeNotifier.dart";
import 'package:provider/provider.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyApp());
}

class Refresh extends StatelessWidget {
  const Refresh({Key? key});

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(child: HomePage());
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(
      child: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  Future<void> _refreshData() async {}

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final themeNotifier = Provider.of<ThemeNotifier>(context);

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            leadingWidth: width / 2,
            toolbarHeight: height / 15,
            leading: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {}, icon: Image.asset("assets/logo1.png")),
                  IconButton(
                      onPressed: () {
                        themeNotifier.toggleTheme();
                      },
                      icon: Image.asset("assets/logo2.png"))
                ],
              ),
            ),
            actions: [
              Row(children: [
                IconButton(
                    onPressed: () {}, icon: Image.asset("assets/logo3.png")),
                IconButton(
                    onPressed: () {}, icon: Image.asset("assets/logo4.png")),
              ])
            ],
          ),
          body: RefreshIndicator(
            onRefresh: _refreshData,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15, left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            height: height / 15,
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: "Search here",
                                  prefixIcon: Image.asset('assets/logo5.png'),
                                  hintStyle: GoogleFonts.hind(),
                                  border: OutlineInputBorder(
                                    borderSide:
                                        const BorderSide(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(14),
                                  )),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Container(
                            width: height / 15,
                            height: height / 15,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                border: Border.all(color: Colors.grey)),
                            child: IconButton(
                              onPressed: () {},
                              icon: Image.asset('assets/logo6.png'),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(children: [
                    Container(
                      alignment: Alignment.bottomRight,
                      width: width,
                      height: height / 4,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(156, 156, 185, 221),
                            Color.fromARGB(255, 255, 255, 255),
                          ],
                          begin: Alignment.centerRight,
                          end: Alignment.centerLeft,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                              alignment: Alignment.center,
                              width: width / 2,
                              height: height / 5,
                              child: Image.asset("assets/50off.png")),
                          Image.asset('assets/image7.png'),
                        ],
                      ),
                    ),
                  ]),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(156, 156, 185, 221),
                                Color.fromARGB(255, 255, 255, 255),
                              ],
                            ),
                          ),
                          width: width / 2,
                          height: height / 20,
                          child: Text("Top Rate Freelances"),
                        ),
                        Container(
                          child: Text("View All"),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: Image.asset('assets/image9.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: Image.asset('assets/image10.png'),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        children: [
                          Padding(
                              padding: const EdgeInsets.all(10),
                              child: Image.asset('assets/image11.png')),
                          Padding(
                              padding: const EdgeInsets.all(10),
                              child: Image.asset('assets/image12.png')),
                          Padding(
                              padding: const EdgeInsets.all(10),
                              child: Image.asset('assets/image13.png')),
                        ],
                      ))
                ],
              ),
            ),
          ),
        ));
  }
}
