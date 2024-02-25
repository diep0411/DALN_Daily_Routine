import 'package:babyami/pages/MainWidget.dart';
import 'package:flutter/material.dart';
import 'package:babyami/pages/LoginPage.dart'; // Import trang đăng nhập
import 'package:babyami/pages/Homepage.dart'; // Import trang chính

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
      AnimatedCurvedNavigationBar(), // Khởi tạo ứng dụng với trang đăng nhập
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
  late Widget currentPage; // Trang hiện tại

  @override
  void initState() {
    super.initState();
    currentPage = LoginPage(); // Khởi tạo trang hiện tại là trang đăng nhập
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEEDDD4),
      body: currentPage,
    );
  }

  // Hàm này sẽ được gọi từ trang đăng nhập hoặc trang đăng ký sau khi đăng nhập thành công
  void navigateToHomePage() {
    setState(() {
      currentPage =
          MainWidget(); // Chuyển đến trang chính sau khi đăng nhập thành công
    });
  }
}
