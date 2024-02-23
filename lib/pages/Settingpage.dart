import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Text(
          'Setting',
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 60),
        ),
      )
  );
}