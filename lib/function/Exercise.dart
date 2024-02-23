import 'package:flutter/material.dart';

class Exercise extends StatelessWidget{
  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Text(
          'Exercise',
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 60),
        ),
      )
  );
}