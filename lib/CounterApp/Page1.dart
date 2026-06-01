import 'package:flutter/material.dart';
import 'details.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  int counter = 0;

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  void openDetailsPage() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Detailspage(counter: counter),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Counter Value',
              style: TextStyle(fontSize: 20),
            ),
             SizedBox(height: 20),
            Text(
              counter.toString(),
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
           SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: incrementCounter,
                  child: const Text('Increment'),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: openDetailsPage,
                  child: const Text('Open Details'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}