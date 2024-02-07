import 'package:flutter/material.dart';
import 'package:travel/homepage.dart';

void main() => runApp(Travel());

class Travel extends StatelessWidget {
  const Travel({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
