import 'package:flutter/material.dart';

class w1 extends StatelessWidget {
  const w1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tuần 1'),
        centerTitle: true,
        backgroundColor: Color(0xffEEDDD4),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30),
          margin: EdgeInsets.only(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // BABY
              Container(
                child: Image.asset(
                  'assets/images/w1_1.jpg',
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Tuần này của bé',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,
                ),
              ),
              Text(
                'Con đang chuẩn bị để được thụ thai rồi!',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.blueAccent,
                ),
              ),
              Divider(
                color: Colors.grey,
                thickness: 0.5,
              ),
              Text(
                'Tuần thai thứ 1 đang bắt đầu rồi! Sự thật là con vẫn chưa được thụ thai đâu. Chờ tới khi trứng và tinh trùng gặp được nhau thì con mới được hình thành. Sau 12 đến 15 giờ thụ tinh, trứng được thụ tinh bắt đầu phát triển nhanh và phân chia thành nhiều tế bào. Trứng thụ tinh di chuyển dọc theo ống dẫn trứng và quá trình phân chia tế bào lại lặp lại đó!',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[700],
                ),
              ),
              SizedBox(height: 50),
              Divider(
                color: Colors.grey[300],
                thickness: 10,
              ),
              // MOM
              Container(
                child: Image.asset(
                  'assets/images/w1_2.jpg',
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Tuần này của mẹ',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,
                ),
              ),
              Text(
                'Mẹ còn chưa biết đến sự tồn tại của con đâu!',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.blueAccent,
                ),
              ),
              Divider(
                color: Colors.grey,
                thickness: 0.5,
              ),
              Text(
                'Tuần 1 cơ thể mẹ đang trong quá trình chuẩn bị cho việc mang thai. Tuy nhiên mẹ vẫn chưa thấy có sự thay đổi nào vì con vẫn còn chưa được hình thành đâu!',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[700],
                ),
              ),
              SizedBox(height: 50),
              Divider(
                color: Colors.grey[300],
                thickness: 10,
              ),
              // DAD
              Container(
                child: Image.asset(
                  'assets/images/w1_3.jpg',
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Tuần này của bố',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,
                ),
              ),
              Text(
                'Thời gian tới xin nhờ cả vào bố!',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.blueAccent,
                ),
              ),
              Divider(
                color: Colors.grey,
                thickness: 0.5,
              ),
              Text(
                'Mặc dù trứng và tinh trùng đã gặp được nhau để thụ tinh nhưng quá trình thụ thai ở tử cung thì vẫn chưa được diễn ra. cơ thể mẹ chưa cảm nhận được thay đổi nào nên bố cũng chưa cần phải lo lắng bố nhé!',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[700],
                ),
              ),
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
