import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _pulloverCounter = 1;
  int _tshirtCounter = 1;
  int _sportDressCounter = 1;

  int _pulloverPrice = 51;
  int _tshirtPrice = 30;
  int _sportDressPrice = 43;

  mySnackBar(message) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    int _totalPulloverPrice = _pulloverCounter * _pulloverPrice;
    int _totalTshirtPrice = _tshirtCounter * _tshirtPrice;
    int _totalSportDressPrice = _sportDressCounter * _sportDressPrice;

    int _getTotalBiil =
        _totalSportDressPrice + _totalTshirtPrice + _totalPulloverPrice;

    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: const Text(
          'My Bag',
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
        // titleTextStyle: TextStyle(fontSize: 8, fontWeight: FontWeight.bold),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4),
                    child: Image.asset('assets/image/pullover.jpg',
                        width: 120, height: 120),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Title(
                                color: Colors.black,
                                child: const Text(
                                  'Pullover',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                )),
                            const Padding(
                              padding: EdgeInsets.all(16),
                              child: Icon(Icons.more_vert),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Text.rich(
                              TextSpan(
                                text: 'Color: ',
                                style: TextStyle(color: Colors.grey),
                                children: [
                                  TextSpan(
                                    text: 'Black',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 20),
                            Text.rich(
                              TextSpan(
                                text: 'Size: ',
                                style: TextStyle(color: Colors.grey),
                                children: [
                                  TextSpan(
                                    text: 'L',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                _pulloverCounter--;
                                setState(() {});
                              },
                              icon: const Icon(
                                Icons.remove,
                              ),
                              style: IconButton.styleFrom(
                                  backgroundColor: Colors.grey.shade200,
                                  foregroundColor: Colors.black54),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Text(
                              '$_pulloverCounter',
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            IconButton(
                              onPressed: () {
                                _pulloverCounter++;
                                setState(() {});
                              },
                              icon: const Icon(Icons.add),
                              style: IconButton.styleFrom(
                                  backgroundColor: Colors.grey.shade200,
                                  foregroundColor: Colors.black54),
                            ),
                            const Spacer(),
                            Padding(
                              padding: const EdgeInsets.all(16),
                              child: Text(
                                '$_totalPulloverPrice\$',
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4),
                    child: Image.asset('assets/image/tshirt.jpg',
                        width: 120, height: 120),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Title(
                                color: Colors.black,
                                child: const Text(
                                  'T-Shirt',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                )),
                            const Padding(
                              padding: EdgeInsets.all(16),
                              child: Icon(Icons.more_vert),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Text.rich(
                              TextSpan(
                                text: 'Color: ',
                                style: TextStyle(color: Colors.grey),
                                children: [
                                  TextSpan(
                                    text: 'Grey',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 20),
                            Text.rich(
                              TextSpan(
                                text: 'Size: ',
                                style: TextStyle(color: Colors.grey),
                                children: [
                                  TextSpan(
                                    text: 'L',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                _tshirtCounter--;
                                setState(() {});
                              },
                              icon: const Icon(
                                Icons.remove,
                              ),
                              style: IconButton.styleFrom(
                                  backgroundColor: Colors.grey.shade200,
                                  foregroundColor: Colors.black54),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Text(
                              '$_tshirtCounter',
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            IconButton(
                              onPressed: () {
                                _tshirtCounter++;
                                setState(() {});
                              },
                              icon: const Icon(Icons.add),
                              style: IconButton.styleFrom(
                                  backgroundColor: Colors.grey.shade200,
                                  foregroundColor: Colors.black54),
                            ),
                            const Spacer(),
                            Padding(
                              padding: const EdgeInsets.all(16),
                              child: Text(
                                '$_totalTshirtPrice\$ ',
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4),
                    child: Image.asset('assets/image/sportdress.jpg',
                        width: 120, height: 120),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Title(
                                color: Colors.black,
                                child: const Text(
                                  'Sport Dress',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                )),
                            const Padding(
                              padding: EdgeInsets.all(16),
                              child: Icon(Icons.more_vert),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Text.rich(
                              TextSpan(
                                text: 'Color: ',
                                style: TextStyle(color: Colors.grey),
                                children: [
                                  TextSpan(
                                    text: 'Black',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 20),
                            Text.rich(
                              TextSpan(
                                text: 'Size: ',
                                style: TextStyle(color: Colors.grey),
                                children: [
                                  TextSpan(
                                    text: 'M',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                _sportDressCounter--;
                                setState(() {});
                              },
                              icon: const Icon(
                                Icons.remove,
                              ),
                              style: IconButton.styleFrom(
                                  backgroundColor: Colors.grey.shade200,
                                  foregroundColor: Colors.black54),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Text(
                              '$_sportDressCounter',
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            IconButton(
                              onPressed: () {
                                _sportDressCounter++;
                                setState(() {});
                              },
                              icon: const Icon(Icons.add),
                              style: IconButton.styleFrom(
                                  backgroundColor: Colors.grey.shade200,
                                  foregroundColor: Colors.black54),
                            ),
                            const Spacer(),
                            Padding(
                              padding: const EdgeInsets.all(16),
                              child: Text(
                                '$_totalSportDressPrice\$ ',
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Total amount:',
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '$_getTotalBiil\$',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width,
                  height: 60,
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: ElevatedButton(
                      onPressed: () {
                        mySnackBar(
                            'Congratulations! Thanks for shopping with us..');
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            WidgetStatePropertyAll(Colors.red.shade500),
                        foregroundColor:
                            const WidgetStatePropertyAll(Colors.white),
                      ),
                      child: const Text('CHECK OUT'),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
