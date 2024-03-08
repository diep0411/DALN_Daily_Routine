import 'package:babyami/JsonModels/users.dart';
import 'package:babyami/SQLite/sqlite.dart';
import 'package:babyami/pages/LoginPage.dart';
import 'package:babyami/pages/RegisterNamePage.dart'; // Import RegisterNamePage
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
   final username = TextEditingController();
  final password = TextEditingController();
  final confirmPassword = TextEditingController();

  final formKey = GlobalKey<FormState>();

  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEEDDD4),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20.0),
              Center(
                child: Column(
                  children: [
                    Text(
                      "Đăng ký",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 4.0, bottom: 4.0),
                        child: Text(
                          "Email",
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    TextField(
                      controller: username,
                      decoration: InputDecoration(
                        labelText: "Email",
                        hintText: "babysync@babysync.com",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 4.0, bottom: 4.0),
                        child: Text(
                          "Tạo mật khẩu",
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    TextField(
                       controller: password,
                      obscureText: !isVisible,
                      decoration: InputDecoration(
                        labelText: "Mật khẩu",
                        hintText: "8-20 kí tự bao gồm chữ cái và số",
                        border: OutlineInputBorder(),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              isVisible = !isVisible;
                            });
                          },
                           icon: Icon(isVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    TextField(
                      controller: confirmPassword,
                      obscureText: !isVisible,
                      decoration: InputDecoration(
                        labelText: "Nhập lại mật khẩu",
                        hintText: "Nhập lại mật khẩu của bạn",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    ElevatedButton(
                      onPressed: () {
                         
                            

                            final db = DatabaseHelper();
                            db
                                .signup(Users(
                                    usrName: username.text,
                                    usrPassword: password.text))
                                .whenComplete(() {
                              
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                           RegisterNamePage()));
                            });
                          
                        // Xử lý đăng ký
                        // Ví dụ: kiểm tra dữ liệu đầu vào, gọi API đăng ký

                        // Sau khi xử lý đăng ký thành công, chuyển hướng đến trang RegisterNamePage
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginPage(),
                          ),
                        );
                      },
                      child: Text("Đăng ký"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffEDC8B3), // Background color
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Bạn đã có tài khoản?"),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginPage(),
                              ),
                            );
                          },
                          child: Text("Đăng nhập"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
