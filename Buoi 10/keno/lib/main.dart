import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class Keno {
  final String text;
  final int count;

  Keno({required this.text, required this.count});
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final statistic = {
      Keno(text: "Chẵn", count: 5),
      Keno(text: "Lẻ", count: 2),
      Keno(text: "Hòa CL", count: 3),
    };
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (final keno in statistic)
              Flexible(
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.grey))),
                  child: Stack(children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Expanded(child: Text(keno.text)),
                        Spacer(),
                        Stack(
                          children: [
                            Container(
                              color: Colors.red,
                              width: keno.count * width / 10,
                              height: 4.0,
                            ),
                          ],
                        ),
                        Expanded(child: Text("${keno.count}")),
                      ],
                    ),
                  ]),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
