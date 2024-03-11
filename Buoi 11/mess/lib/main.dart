import 'package:flutter/material.dart';

void main() {
  runApp(const Messenger());
}

class Messenger extends StatelessWidget {
  const Messenger({super.key});

  @override
  Widget build(BuildContext context) {
    const title = "Messenger";
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      home: Messnger2(),
    );
  }
}

class Messnger2 extends StatefulWidget {
  const Messnger2({super.key});

  @override
  State<Messnger2> createState() => _Messnger2State();
}

class _Messnger2State extends State<Messnger2> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final List<String> image = [
      'assets/ngoctrinh.png',
      'assets/ngoctrinh.png',
      'assets/ngoctrinh.png',
      'assets/ngoctrinh.png',
      'assets/ngoctrinh.png',
      'assets/ngoctrinh.png',
      'assets/ngoctrinh.png',
      'assets/ngoctrinh.png',
      'assets/ngoctrinh.png',
      'assets/ngoctrinh.png',
      'assets/ngoctrinh.png',
      'assets/ngoctrinh.png',
      'assets/ngoctrinh.png',
      'assets/ngoctrinh.png',
      'assets/ngoctrinh.png',
      'assets/ngoctrinh.png',
      'assets/ngoctrinh.png',
      'assets/ngoctrinh.png',
      'assets/ngoctrinh.png',
      'assets/ngoctrinh.png',
      'assets/ngoctrinh.png',
      'assets/ngoctrinh.png',
      'assets/ngoctrinh.png',
      'assets/ngoctrinh.png',
      'assets/ngoctrinh.png',
      'assets/ngoctrinh.png',
      'assets/ngoctrinh.png',
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Messenger",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
        toolbarHeight: height / 10,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(15),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Search",
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder()),
            ),
          ),
          SizedBox(
              height: 80,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: image.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: CircleAvatar(
                        backgroundImage: AssetImage(image[index]),
                        radius: 35,
                      ),
                    );
                  })),
          Expanded(
              child: ListView.builder(
                  itemCount: image.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(image[index]),
                        radius: 35,
                      ),
                      title: const Text("Ngọc trinh"),
                      subtitle: const Text("Nhớ anh quá"),
                    );
                  })),
        ],
      ),
      bottomNavigationBar:
          BottomNavigationBar(items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chat"),
        BottomNavigationBarItem(icon: Icon(Icons.camera), label: "Story"),
      ]),
    );
  }
}
