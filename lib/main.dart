/// Module 12 Assignment on Responsive Design

import 'package:flutter/material.dart';
import 'homeScreen.dart';

void main() {
  runApp(Module12Assignment());
}

class Module12Assignment extends StatelessWidget {
  const Module12Assignment({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Module 12 Assignment',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
