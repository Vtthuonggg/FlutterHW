import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // const String appTitle = "Flutter layout demo";
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // title: appTitle,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Layout Demo"),
        centerTitle: true,
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("assets/bookcook.png"),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Text(
                      "Oeschien Lake Campground",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text('Kandersteg, Swizeland')
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.red,
                  ),
                  Text("41")
                ],
              )
            ],
          ),
          const Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.phone,
                        color: Colors.purple,
                      ),
                      onPressed: null,
                    ),
                    Text(
                      'CALL',
                      style: TextStyle(color: Colors.purple),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.near_me,
                        color: Colors.purple,
                      ),
                      onPressed: null,
                    ),
                    Text(
                      'ROUTE',
                      style: TextStyle(color: Colors.purple),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.share,
                        color: Colors.purple,
                      ),
                      onPressed: null,
                    ),
                    Text(
                      'SHARE',
                      style: TextStyle(color: Colors.purple),
                    ),
                  ],
                ),
              )
            ],
          ),
          Container(
            margin: const EdgeInsets.all(30),
            child: const Text(
                "Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer."
                "Activities enjoyed here include rowing, and riding the summer toboggan run."),
          )
        ],
      ),
    );
  }
}
