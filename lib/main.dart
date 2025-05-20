import 'package:flutter/material.dart';
import 'contact_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contact List',
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: const ContactListApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}
