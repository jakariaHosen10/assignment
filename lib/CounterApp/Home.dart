import 'package:flutter/material.dart';

import 'Page1.dart';
import 'About.dart';

void main() {
  runApp(MaterialApp(home: Homepage()));
}

class Homepage extends StatefulWidget {
  Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _currentIndex = 0;
  List<Widget> screen = [Page1(), Aboutpage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedIndex: _currentIndex,
        animationDuration: Duration(seconds: 1),
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        indicatorColor: Colors.deepPurple,
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.info), label: 'About'),
        ],
      ),
      body: screen[_currentIndex],
    );
  }
}
