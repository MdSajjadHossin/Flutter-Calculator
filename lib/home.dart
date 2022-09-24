import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String calText = "";
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff22252D),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: size.height / 15,
                    child: Text(
                      calText,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
            Container(
              height: size.height / 1.7,
              decoration: const BoxDecoration(
                  color: Color(0xff2A2D36),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  )),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      bloks("AC", Colors.green),
                      bloks("CC", Colors.green),
                      bloks("%", Colors.blue),
                      bloks("/", Colors.blue)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      bloks("1"),
                      bloks("2"),
                      bloks("3"),
                      bloks("x", Colors.blue)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      bloks("4"),
                      bloks("5"),
                      bloks("6"),
                      bloks("-", Colors.blue)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      bloks("7"),
                      bloks("8"),
                      bloks("9"),
                      bloks("+", Colors.blue)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      bloks("del", Colors.red),
                      bloks("0"),
                      bloks("."),
                      bloks("=", Colors.purple)
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget bloks(String num, [Color? color]) {
    return GestureDetector(
      onTap: () {
        if (num == "AC") {
          setState(() {
            calText = "";
          });
        } else {
          setState(() {
            calText = calText + num;
          });
        }
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 10, right: 8, left: 8),
        child: Container(
          height: 70,
          width: 70,
          decoration: const BoxDecoration(
              color: Color(0xff22252D),
              borderRadius: BorderRadius.all(Radius.circular(5))),
          child: Center(
            child: Text(
              num,
              style: TextStyle(
                  color: color ?? Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
