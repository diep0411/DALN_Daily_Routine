import 'package:flutter/material.dart';

class HandBook extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Text(
          'HandBook',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 60),
        ),
      ));
}
