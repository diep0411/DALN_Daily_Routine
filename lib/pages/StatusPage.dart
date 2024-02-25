import 'package:flutter/material.dart';

class StatusPage extends StatefulWidget {
  @override
  _StatusPageState createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  String _selectedOption = ''; // Biến để lưu trữ lựa chọn

  @override
  Widget build(BuildContext context) {
    final backgroundColor = Color(0xffEEDDD4); // Màu nền
    final buttonColor =
        Theme.of(context).colorScheme.secondary; // Màu của các nút

    return Scaffold(
      backgroundColor: backgroundColor,
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
                        "Rất vui được gặp bạn!",
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      "Bạn hãy chọn trạng thái sức khoẻ của mình.",
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      " Baby Sync sẽ cài đặt dựa trên trạng thái sức khỏe của bạn.",
                      style: TextStyle(
                        fontSize: 12.0, // Kích thước chữ nhỏ hơn
                        fontWeight: FontWeight.normal, // Không in đậm
                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _selectedOption = 'Option 1';
                        });
                        _navigateToNextScreen();
                      },
                      child: Text("Tôi đang cố gắng thụ thai"),
                      style: ElevatedButton.styleFrom(
                        minimumSize:
                        Size(double.infinity, 50), // Độ rộng tối thiểu
                        foregroundColor: buttonColor,
                        backgroundColor: Colors.transparent, // Màu chữ
                        elevation: 0, // Loại bỏ độ nâng
                        shape: RoundedRectangleBorder(
                          // Định cấu hình đường viền
                          side:
                          BorderSide(color: buttonColor), // Màu đường viền
                          borderRadius: BorderRadius.circular(10.0), // Bo góc
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _selectedOption = 'Option 2';
                        });
                        _navigateToNextScreen();
                      },
                      child: Text("Tôi đang mang thai"),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(double.infinity, 50),
                        foregroundColor: buttonColor,
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: buttonColor),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _selectedOption = 'Option 3';
                        });
                        _navigateToNextScreen();
                      },
                      child: Text("Tôi đã có em bé"),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(double.infinity, 50),
                        foregroundColor: buttonColor,
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: buttonColor),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
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

  void _navigateToNextScreen() {
    // Xử lý chuyển hướng dựa trên lựa chọn được chọn
    switch (_selectedOption) {
      case 'Option 1':
        Navigator.pushNamed(context, '/option1');
        break;
      case 'Option 2':
        Navigator.pushNamed(context, '/option2');
        break;
      case 'Option 3':
        Navigator.pushNamed(context, '/option3');
        break;
      default:
        break;
    }
  }
}
