import 'package:flutter/material.dart';
import 'package:flutter_calculator/home.dart';

void main() {
  runApp(const FlutterCal());
}

class FlutterCal extends StatelessWidget {
  const FlutterCal({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Calculator',
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
