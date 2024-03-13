import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const Mobipay());

class Mobipay extends StatelessWidget {
  const Mobipay({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Body(),
      ),
    );
  }
}

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _login() {
    String username = _usernameController.text;
    String password = _passwordController.text;
    if (username == "toannm" && password == "123456") {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Đăng nhập thành công"),
        duration: Duration(seconds: 2),
      ));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: const Text(
          "*Tài khoản hoặc mật khẩu không chính xác",
          selectionColor: Colors.red,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 80,
        duration: const Duration(seconds: 2),
        action: SnackBarAction(
          label: 'X',
          onPressed: () {},
          textColor: Colors.white,
        ),
      ));
    }
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 375,
        height: 790,
        child: Container(
          width: 358,
          height: 790,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 251, 246, 240),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 51,
                  left: 42,
                ),
                child: Container(
                  width: 291,
                  height: 163,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 158, 58, 236),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Text(
                      "MobiPay",
                      style: GoogleFonts.righteous(
                          fontSize: 48, color: Colors.white),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 29, top: 38),
                child: Text(
                  "Login",
                  style: GoogleFonts.nunitoSans(
                      textStyle: const TextStyle(
                          fontSize: 36,
                          color: Color.fromARGB(255, 158, 58, 236),
                          fontWeight: FontWeight.bold)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 29),
                child: Text(
                  "Please sign in to continue",
                  style: GoogleFonts.nunitoSans(
                      textStyle: const TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 158, 58, 236),
                          fontWeight: FontWeight.w600)),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 31, left: 34),
                    child: Text(
                      "EMAIL",
                      style: GoogleFonts.nunitoSans(
                          color: const Color.fromARGB(255, 158, 58, 236),
                          fontSize: 12),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 29, top: 5),
                    child: Container(
                      width: 316,
                      height: 52,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(23),
                          boxShadow: [
                            BoxShadow(
                                color: const Color.fromARGB(255, 80, 79, 79)
                                    .withOpacity(0.1),
                                spreadRadius: 1,
                                blurRadius: 1,
                                offset: const Offset(1, 1))
                          ]),
                      child: TextField(
                        controller: _usernameController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(23),
                              borderSide: BorderSide.none),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16, left: 34),
                    child: Text(
                      "PASSWORD",
                      style: GoogleFonts.nunitoSans(
                          color: const Color.fromARGB(255, 158, 58, 236),
                          fontSize: 12),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 29, top: 5),
                    child: Container(
                      width: 316,
                      height: 52,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(23),
                          boxShadow: [
                            BoxShadow(
                                color: const Color.fromARGB(255, 80, 79, 79)
                                    .withOpacity(0.1),
                                spreadRadius: 1,
                                blurRadius: 1,
                                offset: const Offset(1, 1))
                          ]),
                      child: TextField(
                        obscureText: true,
                        controller: _passwordController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(23),
                              borderSide: BorderSide.none),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 205.62, top: 21.52),
                child: SizedBox(
                  width: 139.64,
                  height: 45.64,
                  child: FloatingActionButton(
                    onPressed: _login,
                    backgroundColor: const Color.fromARGB(255, 158, 58, 236),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'LOGIN',
                          style: GoogleFonts.nunitoSans(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w800),
                        ),
                        const Icon(
                          Icons.arrow_forward,
                          size: 26,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 184, top: 18.84),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Forgot Password ? ",
                      style: GoogleFonts.nunitoSans(
                          fontSize: 12, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "Click here",
                      style: GoogleFonts.nunitoSans(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 158, 58, 236)),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Stack(
                children: [
                  Center(
                    child: Container(
                      width: 375,
                      height: 156,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/Vector 2.png'),
                            fit: BoxFit.fill),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 22, top: 30),
                    child: SizedBox(
                      width: 239,
                      height: 84,
                      child: Text(
                        "  Your Mobile\n       Your Bank",
                        style: GoogleFonts.salsa(
                          color: Colors.white,
                          fontSize: 32,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
