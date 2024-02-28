import 'package:flutter/material.dart';

class w3 extends StatelessWidget {
  const w3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tuần 3'),
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
                  'assets/images/w3_1.jpg',
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
                'Con đã thật sự tồn tại!',
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
                '3 tuân tuổi, con đã thực sự tôn tại dù chỉ là 1 phôi thai nhỏ bé bao gồm 2 lớp nội bì và biểu bì với kích thước chỉ 0.35mm-0.6mm thôi. Con đã nhận được đầy đủ các thông tin, vật liệu di truyền cần thiết cho việc hình thành sự sống và phát triển các cơ quan quan trọng của cơ thể. Vì thế mà bất kỳ sự can thiệp nào trong giai đoạn này đều rất dễ khiến con bị tổn thương, bố mẹ hãy chú ý nhé!',
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
                  'assets/images/w3_2.jpg',
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
                'Có chút máu báo thai, mẹ đừng hoảng nhé!',
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
                'Mẹ có thế thấy một vài giọt máu trong vòng 6-12 ngày sau khi thụ thai thành công do phôi đang bám vào tử cung. Thông thường máu ra rất ít và kéo dài từ vài giờ đến vài ngày. Tử cung của mẹ vẫn có kích thước một quả trứng. Và nhiệt độ cơ thể mẹ vẫn duy trì ở mức cao khiến mẹ có thế thấy đau đầu, mệt mỏi đó.',
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
                  'assets/images/w3_3.jpg',
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
                'Bố đừng lo lắng nha!',
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
                'Ngoài việc mệt mỏi do tăng nhiệt độ cơ thể, thời kì này mẹ vẫn chưa có dấu hiệu gì rõ ràng nên bố cũng chưa cần phải lo lắng đâu. Con vẫn là phôi thai bé xíu trong bụng mẹ thôi.',
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
