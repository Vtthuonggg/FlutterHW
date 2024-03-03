import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 300,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: const Color.fromARGB(255, 153, 182, 225),
                          border: Border.all(color: Colors.black, width: 1),
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Strawberry Pavlova",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.grey,
                                )),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 300,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: const Color.fromARGB(255, 153, 182, 225),
                          border: Border.all(color: Colors.black, width: 1),
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                                "Pavlova is a meringue-based dessert named after the Russian ballerine Anna Pavlova. Pavlova features a crisp crust and soft, light inside, topped with fruit and whipped cream",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.grey,
                                )),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            width: 300,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: const Color.fromARGB(255, 153, 182, 225),
                              border: Border.all(color: Colors.black, width: 1),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.grey,
                                          size: 15,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.grey,
                                          size: 15,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.grey,
                                          size: 15,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.grey,
                                          size: 15,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.grey,
                                          size: 15,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(width: 20),
                                Text("170 Reviews",
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 4,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 300,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: const Color.fromARGB(255, 153, 182, 225),
                          border: Border.all(color: Colors.black, width: 1),
                        ),
                        child: const Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.kitchen,
                                  color: Colors.green,
                                  size: 18,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "PREP:",
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 15),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "25 min",
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 14),
                                    )
                                  ],
                                )
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.punch_clock,
                                  color: Colors.green,
                                  size: 18,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "COOK:",
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 15),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "1 hr",
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 14),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.soup_kitchen,
                                  color: Colors.green,
                                  size: 18,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "FEED:",
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 15),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "4-6",
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 14),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                      image: NetworkImage(
                          'https://i.pinimg.com/originals/b0/b7/c8/b0b7c83a0fc3bc2c8985439569cab943.png')),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
