/// Module 13 Assignment

import 'package:flutter/material.dart';
import 'homeScreen.dart';

void main() {
  runApp(const Module13Assignment());
}

class Module13Assignment extends StatelessWidget {
  const Module13Assignment({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Module 13 Assignment',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
