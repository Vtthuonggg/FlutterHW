import 'package:flutter/material.dart';
import 'messenger.dart';

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
          title: const Text(appTitle),
        ),
        body: const MyHome(),
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
  bool _showError = false;
  @override
  void initState() {
    super.initState();
    _usernameController.addListener(_updateUsername);
    _passwordController.addListener(_updatePassword);
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _updateUsername() {
    setState(() {
      _username = _usernameController.text;
    });
  }

  void _updatePassword() {
    setState(() {
      _password = _passwordController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: MediaQuery.of(context).size.height -
              MediaQuery.of(context).padding.top -
              MediaQuery.of(context).padding.bottom,
        ),
        child: Padding(
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
                decoration:
                    const InputDecoration(hintText: "Enter your user name"),
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
                decoration:
                    const InputDecoration(hintText: "Enter your password"),
                obscureText: true,
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  if (_showError)
                    const Padding(
                      padding: EdgeInsets.only(bottom: 8),
                      child: Text(
                        "*Tài khoản hoặc mật khẩu không đúng",
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                  SizedBox(
                    width: double.infinity,
                    child: FloatingActionButton.extended(
                      onPressed: () {
                        setState(() {
                          _showError = false;
                          if (_username == 'quang' &&
                              _password == "quangdeptrai") {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Messenger()));
                          } else {
                            _showError = true;
                          }
                        });
                      },
                      label: const Text("Đăng nhập"),
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0)),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              _username != null && _password != null
                  ? SizedBox(
                      height: MediaQuery.of(context).size.height * 0.2,
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              "Tên đăng nhập và mật khẩu là:",
                            ),
                            Text("Username: $_username"),
                            Text("Password: $_password"),
                          ],
                        ),
                      ),
                    )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
