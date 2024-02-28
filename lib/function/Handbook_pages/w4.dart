import 'package:flutter/material.dart';

class w4 extends StatelessWidget {
  const w4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tuần 4'),
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
                  'assets/images/w4_1.jpg',
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
                '0.07 cm, cỡ hạt bồ công anh!',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.black54,
                ),
              ),
              Text(
                'Còn rất nhỏ nhưng con đã được nối với dây rốn.',
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
                'Dù vẫn chưa giống với hình dạng con người nhưng con đã được nối với dây rốn. Con được bảo vệ bởi màng ối chứa đầy nước ối bao xung quanh, và túi noãn thì tạo máu để nuôi dưỡng con cho tới khi nhau thai thay thế vị trí của nó. Đầu và cơ thể con đã bắt đầu tách ra, hãy theo dõi xem con lớn lên thế nào nhé!',
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
                  'assets/images/w4_2.jpg',
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
                'Kinh nguyệt của mẹ đã thực sự ngừng lại.',
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
                'Thay đổi lớn nhất lúc này là kinh nguyệt của mẹ đã ngừng lại. Nếu như không mang thai, cơ thể sẽ duy trì nhiệt độ cao khoảng 2 tuần rồi nhiệt giảm dần và kinh nguyệt sẽ tiếp tục tới. Nhưng nếu như có con ở trong bụng thì 3 tuần sau khi cơ thế tăng nhiệt độ, kinh nguyệt sẽ ngừng hẳn. Nếu như ngực mẹ bắt đầu căng lên và hơi đau, rồi mẹ thấy buồn nôn nữa thì mẹ đã bắt đầu bị nghén rồi đó.',
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
                  'assets/images/w4_3.jpg',
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
                'Bố nhớ ở bên chăm sóc khi mẹ nghén nha!',
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
                'Đã đến lúc bố chính thức bắt đầu nhiệm vụ chăm sóc mẹ rồi đây! Mẹ sẽ có các triệu chứng thai nghén, có thể sốt nhẹ, buôn nôn và khó chịu trong người. Ngoài ra mẹ còn bị căng và tức ngực nữa. Bố hãy luôn chú ý đến mẹ nhé!',
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
