import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Colors.red,
    body: Center(
      child: Text(
        'profile',
        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 60),
      ),
    )
  );
}