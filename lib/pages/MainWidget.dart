import 'package:babyami/pages/Confidepage.dart';
import 'package:babyami/pages/Homepage.dart';
import 'package:babyami/pages/LoginPage.dart';
import 'package:babyami/pages/Profilepage.dart';
import 'package:babyami/pages/RegisterNamePage.dart';
import 'package:babyami/pages/RegisterPage.dart';
import 'package:babyami/pages/StatusPage.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class MainWidget extends StatefulWidget {
  final String username;
  const MainWidget({Key? key, required this.username}) : super(key: key);

  @override
  _MainWidgetState createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> {
  late List<Widget> screens; // Khai báo biến screens
  int index = 1; // Home page index
  @override
  void initState() {
    super.initState();
    screens = [
      ConfidePage(),
      HomePage(),
      ProfilePage(username1: widget.username),
    ];
  }



  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      Icon(Icons.book, size: 30,color: Colors.white),
      Icon(Icons.home, size: 30,color: Colors.white),
      Icon(Icons.person, size: 30,color: Colors.white)
    ];

    return Scaffold(
      extendBody: true,
      backgroundColor: Color(0xffEEDDD4),
      appBar: AppBar(
        title: TweenAnimationBuilder(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.settings,
                size: 30,
                color: Color(0xff48477F),
              ),
              Padding(
                padding: EdgeInsets.all(0),
                child: Text(
                  "BabySync",
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Dancing Script',
                    color: Color(0xff48477F),
                  ),
                ),
              ),
              Icon(
                Icons.note_add,
                size: 30,
                color: Color(0xff48477F),
              ),
            ],
          ),
          tween: Tween<double>(begin: 0, end: 1),
          duration: Duration(milliseconds: 500),
          curve: Curves.bounceIn,
          builder: (BuildContext context, double _value, child) {
            return Opacity(
              opacity: _value,
              child: child,
            );
          },
        ),
        centerTitle: true,
        backgroundColor: Color(0xffEDC8B3),
        elevation: 0,
      ),
      body: screens[index],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        items: items,
        animationDuration: Duration(milliseconds: 300),
        color: Color(0xffEDC8B3),
        height: 70,
        index: index,
        onTap: (index) => setState(() => this.index = index),
      ),
    );
  }
}
