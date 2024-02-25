import 'package:babyami/pages/StatusPage.dart';
import 'package:flutter/material.dart';

class RegisterNamePage extends StatefulWidget {
  @override
  _RegisterNamePageState createState() => _RegisterNamePageState();
}

class _RegisterNamePageState extends State<RegisterNamePage> {
  final TextEditingController _usernameController = TextEditingController();

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
                    const Text(
                      "Đăng ký",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Padding(
                      padding: const EdgeInsets.only(left: 4.0, bottom: 4.0),
                      child: const Text(
                        "Tên hoặc biệt danh của bạn",
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      " Đừng lo. Bạn có thể thay đổi lại thông tin sau khi nhập.",
                      style: TextStyle(
                        fontSize: 12.0, // Kích thước chữ nhỏ hơn
                        fontWeight: FontWeight.normal, // Không in đậm
                      ),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      controller: _usernameController,
                      decoration: InputDecoration(
                        labelText: "Tên người dùng",
                        hintText: "VD : Mẹ Baby",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    ElevatedButton(
                      onPressed: () {
                        // Xử lý đăng ký
                        // Ví dụ: kiểm tra dữ liệu đầu vào, gọi API đăng ký

                        // Sau khi xử lý đăng ký thành công, chuyển hướng đến trang StatusPage
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => StatusPage(),
                          ),
                        );
                      },
                      child: const Text("Đăng ký"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffEDC8B3), // Background color
                      ),
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
