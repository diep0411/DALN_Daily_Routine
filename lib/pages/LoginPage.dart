import 'package:babyami/JsonModels/users.dart';
import 'package:babyami/SQLite/sqlite.dart';
import 'package:babyami/pages/MainWidget.dart';
import 'package:flutter/material.dart';
import 'package:babyami/pages/RegisterPage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final username = TextEditingController();
  final password = TextEditingController();

  //A bool variable for show and hide password
  bool isVisible = false;

  //Here is our bool variable
  bool isLoginTrue = false;

  final db = DatabaseHelper();

  

  //Now we should call this function in login button
  login() async {
    var response = await db
        .login(Users(usrName: username.text, usrPassword: password.text));
        
    if (response == true) {
      //If login is correct, then goto notes
    
      if (!mounted) return;
      
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) =>  MainWidget(username: username.text)));
    } else {
      //If not, true the bool value to show error message
      setState(() {
        isLoginTrue = true;
      });
    }
  }

  //We have to create global key for our form
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEEDDD4),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
             key: _formKey,
            children: [
              const SizedBox(height: 50.0),
              Center(
                child: Stack(
                  children: [
                    // The background image 'ebe.png'
                    Image.asset(
                      'assets/images/ebe.png',
                      height: 334, // Adjust the height as needed
                      width: 350, // Adjust the width as needed
                      fit: BoxFit.contain,
                    ),
                    // The overlay image (adjust the position as needed)
                    Positioned(
                      top: -25,
                      left: 0,
                      child: Image.asset(
                        'assets/images/Logo.png', // Replace with the actual overlay image path
                        height: 400, // Adjust the height as needed
                        width: 350, // Adjust the width as needed
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20.0),
              Center(
                child: Column(
                  children: [
                    const Text(
                      "Đăng nhập",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    TextField(
                      controller: username,
                      decoration: InputDecoration(
                        labelText: "Email",
                        hintText: "babysync@babysync.com",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    TextField(
                      controller: password,
                    obscureText: !isVisible,
                      decoration: InputDecoration(
                        labelText: "Mật khẩu",
                        hintText: "8-20 kí tự bao gồm chữ cái và số",
                        border: OutlineInputBorder(),
                        suffixIcon: IconButton(
                              onPressed: () {
                                //In here we will create a click to show and hide the password a toggle button
                                setState(() {
                                  //toggle button
                                  isVisible = !isVisible;
                                });
                              },
                              icon: Icon(isVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off)
                        ),
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    ElevatedButton(
                      onPressed: () {
                       
                            login();
                         
                        // Thực hiện xử lý đăng nhập ở đây
                        // Sau khi xử lý xong, chuyển đến trang MainWidget
                        // Navigator.pushReplacement(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => MainWidget(),
                        //   ),
                        // );
                      },
                      child: const Text("Đăng nhập"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffEDC8B3), // background color
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Bạn chưa có tài khoản?"),
                        TextButton( 
                          onPressed: () {
                            // Navigate to RegisterPage
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => RegisterPage(),
                              ),
                            );
                          },
                          child: const Text("Đăng ký"),
                        ),
                      ],
                    ),
                    isLoginTrue
                      ? const Text(
                          "Username or passowrd is incorrect",
                          style: TextStyle(color: Colors.red),
                        )
                      : const SizedBox(),
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
