import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BanhNgot(),
    );
  }
}

class BanhNgot extends StatelessWidget {
  const BanhNgot({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Container(
          alignment: Alignment.center,
          height: height / 3,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: width / 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Container(
                          width: width / 3,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: Colors.blueGrey,
                              border:
                                  Border.all(color: Colors.black, width: 1)),
                          child: const Text(
                            "Strawberry Pavlova",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Container(
                          width: width / 3,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: Colors.blueGrey,
                              border:
                                  Border.all(color: Colors.black, width: 1)),
                          child: const Text(
                            "Pavlova is a meringue-based dessert named after the Russian ballenrine Anna Pavlova. Pavlova featues a crisp crsut and soft, light inside, topped with fruit and whipped cream",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Container(
                          width: width / 3,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: Colors.blueGrey,
                              border:
                                  Border.all(color: Colors.black, width: 1)),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.black,
                                    size: 15,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.black,
                                    size: 15,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.black,
                                    size: 15,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.black,
                                    size: 15,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.black,
                                    size: 15,
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "170 Reviews",
                                style: TextStyle(fontSize: 10),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Container(
                            width: width / 3,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                color: Colors.blueGrey,
                                border:
                                    Border.all(color: Colors.black, width: 1)),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(
                                      Icons.kitchen,
                                      color: Colors.green,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "PREP",
                                          style: TextStyle(fontSize: 10),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text("25 min",
                                            style: TextStyle(fontSize: 10))
                                      ],
                                    )
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(
                                      Icons.kitchen,
                                      color: Colors.green,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "COOK",
                                          style: TextStyle(fontSize: 10),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text("1 hr",
                                            style: TextStyle(fontSize: 10))
                                      ],
                                    )
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(
                                      Icons.soup_kitchen,
                                      color: Colors.green,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "FEED",
                                          style: TextStyle(fontSize: 10),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text("4-6",
                                            style: TextStyle(fontSize: 10))
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            )),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: width / 3 * 2,
                child: Image.asset(
                  "assets/banhngot.png",
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
