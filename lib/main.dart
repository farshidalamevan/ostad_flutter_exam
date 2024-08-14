/// Module 10 Assignment

import 'package:flutter/material.dart';

void main() {
  runApp(Module10Assignment());
}

class Module10Assignment extends StatelessWidget {
  const Module10Assignment({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Greeting App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hello World!',
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text('Welcome To Flutter'),
            Image.network(
              'https://cdn.ostad.app/public/upload/2024-03-20T04-26-32.799Z-ostad_logo_light@512x%20(2).png',
              width: 100,
              height: 100,
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.green),
              ),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Button Pressed!'),
                  ),
                );
              },
              child: Text('Press Me!'),
            ),
          ],
        ),
      ),
    );
  }
}
