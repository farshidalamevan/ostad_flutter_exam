import 'package:flutter/material.dart';

import 'home_screen.dart';

void main() {
  runApp(const M10Assignment());
}

class M10Assignment extends StatelessWidget {
  const M10Assignment({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
