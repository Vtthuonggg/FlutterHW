import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Theme.dart';
import "ThemeNotifier.dart";
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class Refresh extends StatefulWidget {
  const Refresh({Key? key});

  @override
  State<Refresh> createState() => _RefreshState();
}

class _RefreshState extends State<Refresh> {
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

    final List<String> avaterImage = [
      'assets/image9.png',
      'assets/image10.png',
      'assets/image11.png',
      'assets/image12.png',
      'assets/image12.png',
      'assets/image12.png',
      'assets/image12.png',
      'assets/image12.png',
    ];
    final List<String> avaterImage2 = [
      'assets/image13-1.png',
      'assets/image13-2.png',
      'assets/image13-3.png',
    ];
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
                child: Container(
                  height: height / 16,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
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
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Container(
                          width: height / 16,
                          height: height / 16,
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
                      padding: const EdgeInsets.only(top: 10),
                      child: SizedBox(
                        width: width,
                        height: height / 5,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: avaterImage.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: SizedBox(
                                width: width / 5,
                                height: height / 6,
                                child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      CircleAvatar(
                                        radius: height / 20,
                                        child: ClipOval(
                                          child: Image.asset(
                                            avaterImage[index],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 0,
                                        right: 0,
                                        bottom: -10,
                                        child: Container(
                                          color: Colors.white,
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
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 5),
                                                child: Container(
                                                  width: width / 7,
                                                  height: height / 30,
                                                  decoration: BoxDecoration(
                                                      color:
                                                          const Color.fromARGB(
                                                              20,
                                                              130,
                                                              123,
                                                              235),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              40)),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Image.asset(
                                                        'assets/logo7.png',
                                                        scale: width / 150,
                                                      ),
                                                      const Text(
                                                        " 4.9",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    ]),
                              ),
                            );
                          },
                        ),
                      )),
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
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: width,
                    height: height * 2 / 3,
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
