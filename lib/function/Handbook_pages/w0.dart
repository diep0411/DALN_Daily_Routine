import 'package:flutter/material.dart';

class w0 extends StatelessWidget {
  const w0({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chuẩn bị mang thai'),
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
                  'assets/images/w0_1.png',
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Chuẩn bị mang thai',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,
                ),
              ),
              Text(
                'Một cơ thể khỏe mạnh, tâm lí sẵn sàng!',
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
                'Điều quan trọng nhất bây giờ là sức khỏe của mẹ! Mẹ hãy có chế độ ăn uống đầy đủ chất dinh dưỡng, giữ tâm trạng thư giãn, vui vẻ để chuẩn bị cho hành trình mang thai con nào! À, mẹ đừng quên uống axit folic vì chúng rất quan trọng để phát triển thần kinh và não của con nhừng tránh các loại thuốc có chứa nhiều vitamin A. Bổ sung vitamin A quá nhiều trong 3 tháng đầu này có thể gây hại cho con đó. Những món ăn không quá giàu mỡ, giàu vitamin, thịt, rau và hoa quả phải luôn có trong bữa ăn hàng ngày của mẹ nhé. Thế nào, mẹ đã chuẩn bị cho hành trình mang thai này chưa ạ?',
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
                  'assets/images/w0_2.png',
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
                'Lên đường và đi khám bác sĩ nào',
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
                'Mẹ ơi, mẹ đã đi khám khoa Phụ sản ở bệnh viện chưa? Bây giờ là thời điểm thích hợp để mẹ đi khám sức khỏe toàn diện trước khi mang thai để xem khả năng thụ thai và môi trường con lớn lên bên trong bụng mẹ đó. Bố cũng sẽ phải đi cùng mẹ để kiểm tra sức khỏe, vì nhỡ bố có bệnh truyền nhiễm có thể gây ảnh hưởng tới khả năng thụ thai của mẹ và khả năng phát triển của con nữa. Xét nghiệm trước khi sinh bao gồm xét nghiệm máu, xét nghiệm nước tiểu, chụp X-quang,... Mẹ nhất định phải kéo bố đi cùng mẹ đi khám bác sĩ ngay nhé!',
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
                  'assets/images/w0_3.png',
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
                'Từ nay bố phải bỏ hút thuốc và uống rượu!',
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
                'Bố ơi, uống rượu và hút thuốc thật sự rất có hại cho sức khỏe của bố và ảnh hưởng xấu tới môi trường xung quanh nhà mình, nơi con sắp lớn lên nữa. Cả hai đều làm giảm số lượng và chất lượng của tinh trùng nên từ bây giờ bố nên bỏ nhé. Con mong cả nhà mình luôn mạnh khỏe cơ. Vì tương lai con được thụ thai thành công và lớn lên khỏe mạnh trong bụng mẹ, chúng mình cùng tránh xa rượu bia thuốc lá bố nhé. Con tin bố làm được mà!',
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
