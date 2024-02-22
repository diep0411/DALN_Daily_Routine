import 'package:flutter/material.dart';

class DateImportant extends StatelessWidget{
  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Text(
          'Date Important',
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 60),
        ),
      )
  );
}