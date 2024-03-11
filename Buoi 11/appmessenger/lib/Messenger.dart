import 'package:flutter/material.dart';

class Messenger extends StatefulWidget {
  const Messenger({super.key});

  @override
  State<Messenger> createState() => _MessengerState();
}

class _MessengerState extends State<Messenger> {
  final List<String> _avatarImage1 = [
    "assets/icon1.png",
    "assets/icon2.png",
    "assets/icon3.png",
    "assets/icon4.png",
    "assets/icon5.png",
    "assets/icon6.png",
    "assets/icon7.png",
    "assets/icon8.png",
    "assets/icon9.png",
    "assets/icon10.png",
    "assets/icon11.png",
    "assets/icon12.png",
    "assets/icon13.png",
    "assets/icon14.png",
    "assets/icon15.png",
    "assets/icon16.png",
  ];
  final List<String> _avatarImage2 = [
    "assets/icon1.png",
    "assets/icon2.png",
    "assets/icon3.png",
    "assets/icon4.png",
    "assets/icon5.png",
    "assets/icon6.png",
    "assets/icon7.png",
    "assets/icon8.png",
    "assets/icon9.png",
    "assets/icon10.png",
    "assets/icon11.png",
    "assets/icon12.png",
    "assets/icon13.png",
    "assets/icon14.png",
    "assets/icon15.png",
    "assets/icon16.png",
  ];
  void removeAvt(int index) {
    setState(() {
      _avatarImage1.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    const title = "Messenger";
    final height = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Messenger",
            style: TextStyle(color: Colors.white),
          ),
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          backgroundColor: Colors.blue,
          centerTitle: true,
          toolbarHeight: height / 10,
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                itemCount: _avatarImage1.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Stack(children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(_avatarImage1[index]),
                        radius: 35,
                        backgroundColor: Colors.blueGrey,
                      ),
                      Positioned(
                          top: 0,
                          right: 0,
                          child: IconButton(
                              onPressed: () {
                                removeAvt(index);
                              },
                              icon: const Icon(
                                Icons.delete,
                                size: 20,
                              )))
                    ]),
                  );
                }),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
              child: ListView.builder(
            itemCount: _avatarImage2.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(_avatarImage2[index]),
                  backgroundColor: Colors.blueGrey,
                  radius: 30,
                ),
                title: const Text("Ngọc Trinh"),
                subtitle: const Text("Nhớ anh quá"),
              );
            },
          )),
        ]),
        bottomNavigationBar:
            BottomNavigationBar(items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chat"),
          BottomNavigationBarItem(icon: Icon(Icons.camera), label: "Story"),
        ]),
      ),
    );
  }
}
