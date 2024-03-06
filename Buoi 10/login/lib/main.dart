import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const appTitle = "";
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: MyHome(),
      ),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String? _username;
  String? _password;

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "User name",
            style: TextStyle(color: Colors.blue),
          ),
          TextField(
            controller: _usernameController,
            decoration: const InputDecoration(hintText: "Enter your user name"),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Password",
            style: TextStyle(color: Colors.blue),
          ),
          TextField(
            controller: _passwordController,
            decoration: const InputDecoration(hintText: "Enter your password"),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: double.infinity,
            child: FloatingActionButton.extended(
              onPressed: () {
                setState(() {
                  _username = _usernameController.text;
                  _password = _passwordController.text;
                });
              },
              label: const Text("Đăng nhập"),
              icon: const Icon(Icons.login),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          _username != null && _password != null
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Thông tin đăng nhập:",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text("Username: $_username"),
                    Text("Password: $_password"),
                  ],
                )
              : Container(),
        ],
      ),
    );
  }
}
