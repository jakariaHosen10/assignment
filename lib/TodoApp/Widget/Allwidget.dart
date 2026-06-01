import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final VoidCallback  onPressed;

  const Button({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.indigo,
        backgroundColor: Colors.lightBlue.withAlpha(20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        padding: EdgeInsets.all(10),
      ),
      onPressed: onPressed,
      child: Text('+ Create Task',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
    );
  }
}

class GreyTex extends StatelessWidget {
  final double fontSize;
  final String text;

  const GreyTex({super.key, required this.text, required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: Colors.black54, fontSize: fontSize),
    );
  }
}