import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:timeline_tile/timeline_tile.dart';

class NutriTion extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Color(0xffEEDDD4),
    appBar: AppBar(
      title: Center(
        child: Text('Chế Độ Dinh Dưỡng'),
      ),
      leading: IconButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        icon: Icon(Icons.arrow_back),
      ),
      backgroundColor: Color(0xffEDC8B3),
    ),
    body: SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            Container(
              child: Image.asset(
                'assets/images/nutrition.png',
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height:20.0),
            Container(
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                color: Colors.greenAccent,
                border: Border.all(
                  color: Colors.greenAccent,
                  width: 2.0, // Độ dày của đường viền
                ),
                borderRadius: BorderRadius.circular(50.0), // Độ cong của góc
              ),
              child: Padding(
                padding: EdgeInsets.all(2.0),
                child: Text(
                  'Chế độ dinh dưỡng 3 tháng đầu',
                  style: TextStyle(
                    fontSize: 24,color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.0), // Adjust the spacing as needed
            Text(
              'Lúc này, phụ nữ mang thai vẫn có thể duy trì một chế độ ăn uống như thường lệ. '
                  'Tuy nhiên, từ tháng thứ 4 trở đi, nhu cầu về dinh dưỡng của mẹ bầu '
                  'sẽ bắt đầu thay đổi.',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                color: Colors.greenAccent,
                border: Border.all(
                  color: Colors.greenAccent,
                  width: 2.0, // Độ dày của đường viền
                ),
                borderRadius: BorderRadius.circular(50.0), // Độ cong của góc
              ),
              child: Padding(
                padding: EdgeInsets.all(2.0),
                child: Text(
                  'Chế độ dinh dưỡng 3 tháng giữa',
                  style: TextStyle(
                    fontSize: 24,color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.0), // Adjust the spacing as needed
            Text(
              'Khẩu phần giữa các nhóm thực phẩm trong chế độ ăn uống hàng ngày '
                  'của phụ nữ mang thai trong giai đoạn này bắt đầu có sự thay đổi đáng kể. '
                  'Ngoại trừ nhóm muối, đường và dầu mỡ, những nhóm thực phẩm khác được '
                  'biểu thị trên tháp dinh dưỡng dành cho bà bầu cũng cần được bổ sung '
                  'nhiều vào chế độ ăn thường ngày. Trong khi đó, khẩu phần ăn của các '
                  'nhóm thực phẩm chứa đạm, rau quả và ngũ cốc sẽ cần tăng thêm một đơn vị, '
                  'và tăng thêm 2 đơn vị cho nhóm sữa trong tháp dinh dưỡng.',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                color: Colors.greenAccent,
                border: Border.all(
                  color: Colors.greenAccent,
                  width: 2.0, // Độ dày của đường viền
                ),
                borderRadius: BorderRadius.circular(50.0), // Độ cong của góc
              ),
              child: Padding(
                padding: EdgeInsets.all(2.0),
                child: Text(
                  'Chế độ dinh dưỡng 3 tháng cuối',
                  style: TextStyle(
                    fontSize: 24,color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.0), // Adjust the spacing as needed
            Text(
              ' Mẹ bầu cần tăng thêm 1 đơn vị trong khẩu phần ăn dầu mỡ của mình. '
                  'Ngoài ra, tăng thêm 3 đơn vị cho nhóm thực phẩm chứa đạm và sữa. '
                  'Đối với nhóm trái cây và rau xanh sẽ được tăng thêm một đơn vị '
                  'cho mỗi loại. Cuối cùng, tăng 1,5 đơn vị cho ngũ cốc và 2 đơn vị '
                  'cho nước.',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
