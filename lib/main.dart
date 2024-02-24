import 'package:babyami/pages/Homepage.dart';
import 'package:babyami/pages/Profilepage.dart';
import 'package:babyami/screens/quanly_Confide.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedCurvedNavigationBar(),
    );
  }
}

class AnimatedCurvedNavigationBar extends StatefulWidget {
  const AnimatedCurvedNavigationBar({Key? key}) : super(key: key);

  @override
  _AnimatedCurvedNavigationBarState createState() =>
      _AnimatedCurvedNavigationBarState();
}

class _AnimatedCurvedNavigationBarState
    extends State<AnimatedCurvedNavigationBar> {
  GlobalKey<CurvedNavigationBarState> bottomNavigationBar = GlobalKey();
  int index = 1;
  final screens= [
    QuanLyConfide(),
    HomePage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      Icon(Icons.collections_bookmark, size: 30),
      Icon(Icons.home, size: 30),
      Icon(Icons.person, size: 30)
    ];
    return Scaffold(
        extendBody: true,
        backgroundColor: Color(0xffEEDDD4),
        appBar: AppBar(
          title: TweenAnimationBuilder(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween, // Đặt căn giữa trái và phải
              children: [
                Icon(
                  Icons.dark_mode,
                  size: 30,
                  color: Color(0xff48477F),
                ),
                Padding(
                  padding: EdgeInsets.all(0), // Điều chỉnh giữa icon và văn bản
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
                  // Thêm biểu tượng khác nếu cần thiết
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
          color: Colors.white,
          height: 55,
          index: index,
          onTap: (index) => setState(() => this.index = index
          ),
        ),
    );
  }
}