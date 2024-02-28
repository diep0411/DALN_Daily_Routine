import 'package:flutter/material.dart';

class w2 extends StatelessWidget {
  const w2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tuần 2'),
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
                  'assets/images/w2_1.jpg',
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
                'Con vẫn chỉ là một phôi thai.',
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
                'Trứng mất khoảng 3-4 ngày để đi từ ống dẫn trứng đến tử cung của mẹ, phân chia thành nhiều tế bào giống hệt nhau trên đường đi. Vào tới tử cung thì nó được gọi là phôi nang. 1-2 ngày sau, nó sẽ bắt đầu chui vào lớp niêm mạc tử cung và làm tố tại đó, tiếp tục cho quá trình phát triển và biến đổi kì diệu của mình. Từ giờ cho tới tuần thai thứ 8, con vẫn chỉ là một phôi thai thôi, chưa phải là thai nhi hoàn chỉnh đâu!',
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
                  'assets/images/w2_2.jpg',
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
                'Mẹ sẽ thấy nhiệt độ cơ thể tăng nhẹ!',
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
                'Trong tuần này nếu mẹ thấy mình bị lạnh hoặc hơi sốt, cơ thể mệt mỏi hơn bình thường thì mẹ đừng quá lo lắng, là do hormone progesterone đang tiết ra để phục vụ cho việc mang thai đó. Tử cung sẽ dày lên đế quá trình thụ thai được thuận lợi hơn. Thời kì này nếu cơ thể mẹ nhạy cảm thì có thể sẽ giống như bị cảm lạnh, không sao đâu mẹ nhé!',
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
                  'assets/images/w2_3.jpg',
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
                'Bố hãy để ý tình trạng sức khỏe của mẹ nhé!',
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
                'Bố hãy chú ý vì có thể mẹ sẽ có những dấu hiệu mệt mỏi, cảm, sốt và cần được chăm sóc. Còn con, con vẫn đang ở trong ống dẫn trứng của mẹ đó!',
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
