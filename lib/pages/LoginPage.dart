import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _obscureText = true;

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
                      controller: _emailController,
                      decoration: InputDecoration(
                        labelText: "Email",
                        hintText: "babysync@babysync.com",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    TextField(
                      controller: _passwordController,
                      obscureText: _obscureText,
                      decoration: InputDecoration(
                        labelText: "Mật khẩu",
                        hintText: "8-20 kí tự bao gồm chữ cái và số",
                        border: OutlineInputBorder(),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                          icon: Icon(
                            _obscureText
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    ElevatedButton(
                      onPressed: () {},
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
                          onPressed: () {},
                          child: const Text("Đăng ký"),
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
