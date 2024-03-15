import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Theme.dart';
import "ThemeNotifier.dart";
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class Refresh extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const Refresh({Key? key});

  @override
  Widget build(BuildContext context) {
    return const ThemeWrapper(child: HomePage());
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const ThemeWrapper(
      child: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
            toolbarHeight: height / 10,
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
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(50.0),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 15, left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: SizedBox(
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
            ),
          ),
          body: RefreshIndicator(
            onRefresh: _refreshData,
            child: SingleChildScrollView(
              child: Column(
                children: [
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
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(156, 156, 185, 221),
                            Color.fromARGB(255, 255, 255, 255),
                            Color.fromARGB(255, 255, 255, 255),
                            Color.fromARGB(255, 255, 255, 255),
                            Color.fromARGB(255, 255, 255, 255),
                          ],
                        ),
                      ),
                      width: width,
                      height: height / 20,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, right: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Top Rate Freelances",
                              style: GoogleFonts.hind(
                                  fontWeight: FontWeight.w600,
                                  fontSize: height / 35),
                            ),
                            Text(
                              "View All",
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: const Color.fromARGB(
                                    255,
                                    21,
                                    72,
                                    131,
                                  ),
                                  fontSize: height / 55),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12, top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Stack(
                          children: [
                            SizedBox(
                              width: width / 5,
                              height: height / 6,
                            ),
                            CircleAvatar(
                              radius: height / 20,
                              child: ClipOval(
                                child: Image.asset(
                                  "assets/image9.png",
                                ),
                              ),
                            ),
                            Positioned(
                                bottom: -5,
                                child: Container(
                                  decoration:
                                      const BoxDecoration(color: Colors.white),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        const Text(
                                          "Wade Warren",
                                          style: TextStyle(fontSize: 13),
                                        ),
                                        const Text(
                                          "Beautician",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 5),
                                          child: Container(
                                            width: width / 7,
                                            height: height / 30,
                                            decoration: BoxDecoration(
                                                color: const Color.fromARGB(
                                                    20, 130, 123, 235),
                                                borderRadius:
                                                    BorderRadius.circular(40)),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Image.asset(
                                                  'assets/logo7.png',
                                                  scale: width / 150,
                                                ),
                                                const Text(
                                                  " 4.9",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600),
                                                )
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ))
                          ],
                        ),
                        Stack(
                          children: [
                            SizedBox(
                              width: width / 5,
                              height: height / 6,
                            ),
                            CircleAvatar(
                              radius: height / 20,
                              child: ClipOval(
                                child: Image.asset(
                                  "assets/image10.png",
                                ),
                              ),
                            ),
                            Positioned(
                                bottom: -5,
                                child: Container(
                                  decoration:
                                      const BoxDecoration(color: Colors.white),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        const Text(
                                          "Wade Warren",
                                          style: TextStyle(fontSize: 13),
                                        ),
                                        const Text(
                                          "Beautician",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 5),
                                          child: Container(
                                            width: width / 7,
                                            height: height / 30,
                                            decoration: BoxDecoration(
                                                color: const Color.fromARGB(
                                                    20, 130, 123, 235),
                                                borderRadius:
                                                    BorderRadius.circular(40)),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Image.asset(
                                                  'assets/logo7.png',
                                                  scale: width / 150,
                                                ),
                                                const Text(
                                                  " 4.9",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600),
                                                )
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ))
                          ],
                        ),
                        Stack(
                          children: [
                            SizedBox(
                              width: width / 5,
                              height: height / 6,
                            ),
                            CircleAvatar(
                              radius: height / 20,
                              child: ClipOval(
                                child: Image.asset(
                                  "assets/image11.png",
                                ),
                              ),
                            ),
                            Positioned(
                                bottom: -5,
                                child: Container(
                                  decoration:
                                      const BoxDecoration(color: Colors.white),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        const Text(
                                          "Wade Warren",
                                          style: TextStyle(fontSize: 13),
                                        ),
                                        const Text(
                                          "Beautician",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 5),
                                          child: Container(
                                            width: width / 7,
                                            height: height / 30,
                                            decoration: BoxDecoration(
                                                color: const Color.fromARGB(
                                                    20, 130, 123, 235),
                                                borderRadius:
                                                    BorderRadius.circular(40)),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Image.asset(
                                                  'assets/logo7.png',
                                                  scale: width / 150,
                                                ),
                                                const Text(
                                                  " 4.9",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600),
                                                )
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ))
                          ],
                        ),
                        Stack(
                          children: [
                            SizedBox(
                              width: width / 5,
                              height: height / 6,
                            ),
                            CircleAvatar(
                              radius: height / 20,
                              child: ClipOval(
                                child: Image.asset(
                                  "assets/image12.png",
                                ),
                              ),
                            ),
                            Positioned(
                                bottom: -5,
                                child: Container(
                                  decoration:
                                      const BoxDecoration(color: Colors.white),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        const Text(
                                          "Wade Warren",
                                          style: TextStyle(fontSize: 13),
                                        ),
                                        const Text(
                                          "Beautician",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 5),
                                          child: Container(
                                            width: width / 7,
                                            height: height / 30,
                                            decoration: BoxDecoration(
                                                color: const Color.fromARGB(
                                                    20, 130, 123, 235),
                                                borderRadius:
                                                    BorderRadius.circular(40)),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Image.asset(
                                                  'assets/logo7.png',
                                                  scale: width / 150,
                                                ),
                                                const Text(
                                                  " 4.9",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600),
                                                )
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ))
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(156, 156, 185, 221),
                            Color.fromARGB(255, 255, 255, 255),
                            Color.fromARGB(255, 255, 255, 255),
                            Color.fromARGB(255, 255, 255, 255),
                            Color.fromARGB(255, 255, 255, 255),
                          ],
                        ),
                      ),
                      width: width,
                      height: height / 20,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, right: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Top Services",
                              style: GoogleFonts.hind(
                                  fontWeight: FontWeight.w600,
                                  fontSize: height / 35),
                            ),
                            Text(
                              "View All",
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: const Color.fromARGB(
                                    255,
                                    21,
                                    72,
                                    131,
                                  ),
                                  fontSize: height / 55),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
