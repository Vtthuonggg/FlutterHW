import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Theme.dart';
import "ThemeNotifier.dart";
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
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
          toolbarHeight: height / 12,
          leading: Row(
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
          actions: [
            Row(children: [
              IconButton(
                  onPressed: () {}, icon: Image.asset("assets/logo3.png")),
              IconButton(
                  onPressed: () {}, icon: Image.asset("assets/logo4.png")),
            ])
          ],
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Search here",
                          prefixIcon: Image.asset('assets/logo5.png'),
                          hintStyle: GoogleFonts.hind(),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(14),
                          )),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Container(
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
            )
          ],
        ),
      ),
    );
  }
}
