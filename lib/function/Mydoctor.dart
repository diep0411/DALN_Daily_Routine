import 'package:flutter/material.dart';

class Mydoctor extends StatelessWidget{
  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Text(
          'Mydoctor',
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 60),
        ),
      )
  );
}