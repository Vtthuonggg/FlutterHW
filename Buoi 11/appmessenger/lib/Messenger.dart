import 'package:flutter/material.dart';

class Messenger extends StatelessWidget {
  const Messenger({super.key});

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
              height: 100, // Điều chỉnh chiều cao của danh sách ngang tại đây
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const <Widget>[
                  SizedBox(width: 10),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/ngoctrinh.png'),
                    radius: 35,
                  ),
                  SizedBox(width: 10), // Khoảng cách giữa các avatar
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/ngoctrinh.png'),
                    radius: 35,
                  ),
                  SizedBox(width: 10),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/ngoctrinh.png'),
                    radius: 35,
                  ),
                  SizedBox(width: 10),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/ngoctrinh.png'),
                    radius: 35,
                  ),
                  SizedBox(width: 10),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/ngoctrinh.png'),
                    radius: 35,
                  ),
                  SizedBox(width: 10),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/ngoctrinh.png'),
                    radius: 35,
                  ),
                  SizedBox(width: 10),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/ngoctrinh.png'),
                    radius: 35,
                  ),
                  SizedBox(width: 10),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/ngoctrinh.png'),
                    radius: 35,
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: const <Widget>[
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/ngoctrinh.png'),
                      radius: 20,
                    ),
                    title: Text("Ngọc Trinh"),
                    subtitle: Text("Nhớ anh quá"),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/ngoctrinh.png'),
                    ),
                    title: Text("Ngọc Trinh"),
                    subtitle: Text("Nhớ anh quá"),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/ngoctrinh.png'),
                    ),
                    title: Text("Ngọc Trinh"),
                    subtitle: Text("Nhớ anh quá"),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/ngoctrinh.png'),
                    ),
                    title: Text("Ngọc Trinh"),
                    subtitle: Text("Nhớ anh quá"),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/ngoctrinh.png'),
                    ),
                    title: Text("Ngọc Trinh"),
                    subtitle: Text("Nhớ anh quá"),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/ngoctrinh.png'),
                    ),
                    title: Text("Ngọc Trinh"),
                    subtitle: Text("Nhớ anh quá"),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/ngoctrinh.png'),
                    ),
                    title: Text("Ngọc Trinh"),
                    subtitle: Text("Nhớ anh quá"),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/ngoctrinh.png'),
                    ),
                    title: Text("Ngọc Trinh"),
                    subtitle: Text("Nhớ anh quá"),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/ngoctrinh.png'),
                    ),
                    title: Text("Ngọc Trinh"),
                    subtitle: Text("Nhớ anh quá"),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/ngoctrinh.png'),
                    ),
                    title: Text("Ngọc Trinh"),
                    subtitle: Text("Nhớ anh quá"),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/ngoctrinh.png'),
                    ),
                    title: Text("Ngọc Trinh"),
                    subtitle: Text("Nhớ anh quá"),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/ngoctrinh.png'),
                    ),
                    title: Text("Ngọc Trinh"),
                    subtitle: Text("Nhớ anh quá"),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/ngoctrinh.png'),
                    ),
                    title: Text("Ngọc Trinh"),
                    subtitle: Text("Nhớ anh quá"),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/ngoctrinh.png'),
                    ),
                    title: Text("Ngọc Trinh"),
                    subtitle: Text("Nhớ anh quá"),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/ngoctrinh.png'),
                    ),
                    title: Text("Ngọc Trinh"),
                    subtitle: Text("Nhớ anh quá"),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/ngoctrinh.png'),
                    ),
                    title: Text("Ngọc Trinh"),
                    subtitle: Text("Nhớ anh quá"),
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar:
            BottomNavigationBar(items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chat"),
          BottomNavigationBarItem(icon: Icon(Icons.camera), label: "Story"),
        ]),
      ),
    );
  }
}
