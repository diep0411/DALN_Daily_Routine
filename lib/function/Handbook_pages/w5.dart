import 'package:flutter/material.dart';

class w5 extends StatelessWidget {
  const w5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tuần 5'),
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
                  'assets/images/w5_1.jpg',
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
                '0.12 cm, cỡ một hạt táo!',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.black54,
                ),
              ),
              Text(
                'Nếu siêu âm thì đã có thể thấy con rồi đó.',
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
                'Bây giờ bố mẹ đã có thể nhìn thấy hình dạng xinh xăn của con qua sóng siêu âm rồi. Nếu tới bệnh viên để siêu âm, có thể sẽ thấy được tim và hệ tuần hoàn của con đang bắt đầu hình thành đó. Từ giờ con sẽ lớn nhanh như thổi, không có gì phải lo lắng đâu!',
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
                  'assets/images/w5_2.jpg',
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
                'Mẹ bước vào thời kì thai nghén mệt mỏi rồi đây.',
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
                'Mẹ bắt đầu nghén và đầu nhũ hoa trở nên mẫn cảm hơn.Triệu chứng nghén có thể nghiêm trọng nhất vào sáng sớm hoặc những lúc mẹ đói bụng. Bác sĩ khuyên mẹ nên thường xuyên ăn những khấu phân ăn nhỏ, và nếu quá nghiêm trọng thì mẹ nhớ phải đi khám ngay nhé. Cơ thể mẹ cũng trở nên mệt mỏi và tâm trạng thì ủ rũ cả ngày. Đầu nhũ hoa có thể bị rát nhẹ và nhìn thấy rõ các mạch máu ở bầu ngực nữa đó.',
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
                  'assets/images/w5_3.jpg',
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
                'Mẹ sẽ thường xuyên mắc tiểu và cần đi vệ sinh, bố hãy luôn kiểm tra nhà vệ sinh của những nơi mà bố mẹ tới nhé. Ngoài ra mẹ cần bố ở bên lúc mệt mỏi, chóng mặt, buồn nôn nữa. Hãy cho mẹ thêm sức mạnh nhé bố!',
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
