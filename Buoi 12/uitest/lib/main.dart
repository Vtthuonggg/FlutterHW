import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      darkTheme: ThemeData.dark(),
      theme: ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          leadingWidth: width / 2,
          toolbarHeight: height / 12,
          leading: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                icon: Image.asset("assets/logo4.png"),
                onPressed: () {},
              ),
              Image.asset('assets/logo1.png'),
            ],
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Image.asset('assets/logo2.png')),
            IconButton(onPressed: () {}, icon: Image.asset('assets/logo3.png'))
          ],
        ),
        body: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                Row(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          hintText: "Search here",
                          icon: Image.asset("assets/logo5.png")),
                    ),
                    IconButton(
                        onPressed: () {}, icon: Image.asset("assets/logo5.png"))
                  ],
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
