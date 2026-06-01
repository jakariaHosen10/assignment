import 'package:flutter/material.dart';

import 'Inputpage.dart';
import 'Widget/Allwidget.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: .start,
          crossAxisAlignment: .start,
          children: [
            Row(
              children: [
                Icon(Icons.check_box_rounded, color: Colors.indigo, size: 35),
                Text(
                  'Taski',
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            RichText(
              text: TextSpan(
                text: 'Welcome.',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  TextSpan(
                    text: 'Johon',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            GreyTex(text: 'Create tasks to active more.', fontSize: 20),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.center,
              child: Stack(
                fit: StackFit.passthrough,
                clipBehavior: Clip.none,
                // alignment: Alignment.center,
                children: [
                  Container(
                    transform: Matrix4.rotationZ(0.2),
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Colors.blue,
                      image: DecorationImage(
                        image: AssetImage('assets/images1.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -80,
                    right: -80,
                    child: Container(
                      transform: Matrix4.rotationZ(0.2),
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        // color: Colors.indigo,
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                          image: AssetImage('assets/images1.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Align(
              alignment: Alignment.center,
              child: GreyTex(text: 'You habe no tasks listed.', fontSize: 20),
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.center,
              child: Button(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Inputpage(onPressed: (index) {  },),));
              }),
            ),

            SizedBox(height: 60),
          ],
        ),
      ),
    );
  }
}


