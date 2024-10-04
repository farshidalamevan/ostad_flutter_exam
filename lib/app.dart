import 'package:flutter/material.dart';
import 'product_list_screen.dart';

class Module14Assignment extends StatelessWidget {
  const Module14Assignment({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ProductListScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}