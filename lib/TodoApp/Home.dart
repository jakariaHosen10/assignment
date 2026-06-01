import 'package:assignment/TodoApp/doneScreen.dart';
import 'package:assignment/TodoApp/todoScreen.dart';
import 'package:flutter/material.dart';

import 'createScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currenIndex = 0;

  List <Widget> screen = [TodoScreen(), CreateScreen(), DoneScreen()];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      // appBar: AppBar(
      //   title: Text('Todo App'),
      //   centerTitle: true,
      // ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            _currenIndex = index;
          });
        },
        selectedIndex: _currenIndex,
        animationDuration: Duration(seconds: 1),
          destinations: [
            NavigationDestination(icon: Icon(Icons.today_outlined), label: 'Todo'),
            NavigationDestination(icon: Icon(Icons.add_box_outlined), label: 'Create'),
            NavigationDestination(icon: Icon(Icons.check_box), label: 'Done'),
    ]),
      body: screen[_currenIndex],

    );
  }
}

