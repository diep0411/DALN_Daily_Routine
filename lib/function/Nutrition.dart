import 'package:flutter/material.dart';

class Nutrition extends StatelessWidget{
  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Text(
          'Nutrition',
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 60),
        ),
      )
  );
}