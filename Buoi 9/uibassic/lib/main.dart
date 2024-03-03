import 'package:flutter/material.dart';

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
      // backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Homework"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/cumeo.png",
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
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
                      onPressed: null, icon: Icon(Icons.comment_outlined)),
                  Text("Bình luận"),
                ],
              )),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: null, icon: Icon(Icons.ios_share_outlined)),
                    Text("Chia sẻ"),
                  ],
                ),
              )
            ],
          ),
          Text("currentCounter is: $_counter"),
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
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: Icon(
            _liked ? Icons.favorite : Icons.favorite_border,
            color: _liked ? Colors.red : null,
          ),
          onPressed: () {
            setState(() {
              _liked = !_liked;
            });
          },
        ),
        Text(_liked ? 'Đã thích' : 'Thích')
      ],
    );
  }
}
