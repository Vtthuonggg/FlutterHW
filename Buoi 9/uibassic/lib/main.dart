import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Homework"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/cumeo.png",
                ),
                const SizedBox(height: 20),
                const Row(
                  children: [
                    Expanded(
                      child: LikeButotn(),
                    ),
                    Expanded(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: null,
                            icon: Icon(Icons.comment_outlined)),
                        Text("Bình luận"),
                      ],
                    )),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                              onPressed: null,
                              icon: Icon(Icons.ios_share_outlined)),
                          Text("Chia sẻ"),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            margin: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("currentCounter is: "),
                Text(
                  '$_counter',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        shape: const CircleBorder(),
        child: const Icon(
          Icons.add,
          color: Colors.red,
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        child: AppBar(
          backgroundColor: Colors.blue,
        ),
      ),
    );
  }
}

class LikeButotn extends StatefulWidget {
  const LikeButotn({super.key});

  @override
  State<LikeButotn> createState() => _LikeButotnState();
}

class _LikeButotnState extends State<LikeButotn> {
  bool _liked = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _toggleLike,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              IconButton(
                icon: Icon(
                  _liked ? Icons.favorite : Icons.favorite_border_outlined,
                  color: _liked ? Colors.red : null,
                ),
                onPressed: _toggleLike,
              ),
            ],
          ),
          Text(
            _liked ? 'Đã thích' : 'Thích',
            style: TextStyle(
              color: _liked ? Colors.red : null,
            ),
          )
        ],
      ),
    );
  }

  void _toggleLike() {
    setState(() {
      _liked = !_liked;
    });
  }
}
