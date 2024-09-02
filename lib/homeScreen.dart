import 'package:flutter/material.dart';
import 'package:ostad_flutter_exm/content.dart';
import 'package:ostad_flutter_exm/responsiveBuilder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsivebuilder(
      mobile: Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.all(24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'HUMMING\nBIRD.',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
        drawer: Drawer(
          child: Column(
            children: [
              SafeArea(
                child: Container(
                  width: double.infinity,
                  height: 250,
                  decoration: BoxDecoration(color: Colors.green.shade400),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'SKILL UP NOW',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      Text('TAP HERE',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.all(16),
                  child: Icon(
                    Icons.live_tv_rounded,
                    color: Colors.black,
                  ),
                ),
                title: Text('Episodes'),
              ),
              SizedBox(
                height: 16,
              ),
              ListTile(
                leading: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Icon(
                    Icons.info_sharp,
                    color: Colors.black,
                  ),
                ),
                title: Text('About'),
              ),
            ],
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              content(),
              SizedBox(
                height: 50,
                width: 200,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    ' Join course ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  style: ButtonStyle(
                    foregroundColor: WidgetStatePropertyAll(Colors.white),
                    backgroundColor: WidgetStatePropertyAll(Colors.green),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      tablet: Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.all(24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'HUMMING\nBIRD.',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: Row(
                    children: [
                      Text('Episodes'),
                      SizedBox(
                        width: 20,
                      ),
                      Text('About'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              content(),
              SizedBox(
                height: 50,
                width: 200,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    ' Join course ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  style: ButtonStyle(
                    foregroundColor: WidgetStatePropertyAll(Colors.white),
                    backgroundColor: WidgetStatePropertyAll(Colors.green),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      desktop: Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.all(24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'HUMMING\nBIRD.',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: Row(
                    children: [
                      Text('Episodes'),
                      SizedBox(
                        width: 20,
                      ),
                      Text('About'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            content(),
            SizedBox(
              height: 50,
              width: 200,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  ' Join course ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                style: ButtonStyle(
                  foregroundColor: WidgetStatePropertyAll(Colors.white),
                  backgroundColor: WidgetStatePropertyAll(Colors.green),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


