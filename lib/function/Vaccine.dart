import 'package:flutter/material.dart';

class Vaccine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEEDDD4),
      appBar: AppBar(
        title: Text('Tiêm Chủng'),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back),
        ),
        backgroundColor: Color(0xffEDC8B3),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      border: Border.all(
                        color: Colors.blue,
                        width: 2.0, // Độ dày của đường viền
                      ),
                      borderRadius:
                      BorderRadius.circular(50.0), // Độ cong của góc
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text(
                        'Trước khi mang thai',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      border: Border.all(
                        color: Colors.grey,
                        width: 2.0, // Độ dày của đường viền
                      ),
                      borderRadius:
                      BorderRadius.circular(50.0), // Độ cong của góc
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text(
                        'Trong khi mang thai',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Container(
                width: double.infinity,
                child: Table(
                  border: TableBorder.all(color: Colors.black),
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  children: [
                    TableRow(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                      ),
                      children: [
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                                'Vaccine',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),
                            ),
                          ),
                        ),
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Thời Gian Khuyến Cáo',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.white),
                            ),
                          ),
                        ),
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Trạng thái',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                    'Mũi Tiêm 3in1',
                                    style: TextStyle(fontSize:15, decoration: TextDecoration.underline, fontStyle: FontStyle.italic,color: Colors.blue),
                                ),
                                Text(
                                    '(sởi-quai bị-rubella)',
                                    style: TextStyle(fontSize:12,decoration: TextDecoration.underline, fontStyle: FontStyle.italic,color: Colors.blue),
                                ),
                              ],
                            ),
                          ),
                        ),
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'trong 3-6 tháng trước khi có thai,muộn nhất là trước khi có bầu 1- 3 tháng',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 12,color: Colors.blue),
                            ),
                          ),
                        ),
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Checkbox(
                              value: true, // Set the initial value of the checkbox (true or false)
                              onChanged: (bool? value) {
                                // Handle the onChanged event if you need to react to checkbox changes
                              },
                            ),
                        ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Viêm Gan B',
                                  style: TextStyle(fontSize:15, decoration: TextDecoration.underline, fontStyle: FontStyle.italic,color: Colors.blue),
                                ),
                              ],
                            ),
                          ),
                        ),
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              '3-4 tuần trước khi mang bầu ',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 12,color: Colors.blue),
                            ),
                          ),
                        ),
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Checkbox(
                              value: false, // Set the initial value of the checkbox (true or false)
                              onChanged: (bool? value) {
                                // Handle the onChanged event if you need to react to checkbox changes
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Cúm',
                                  style: TextStyle(fontSize:15, decoration: TextDecoration.underline, fontStyle: FontStyle.italic,color: Colors.blue),
                                ),
                              ],
                            ),
                          ),
                        ),
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Khuyến cáo tiêm trước khi mang bầu',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 12,color: Colors.blue),
                            ),
                          ),
                        ),
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Checkbox(
                              value: true, // Set the initial value of the checkbox (true or false)
                              onChanged: (bool? value) {
                                // Handle the onChanged event if you need to react to checkbox changes
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Bạch hầu, ho gà,uốn ván',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize:15, decoration: TextDecoration.underline, fontStyle: FontStyle.italic,color: Colors.blue),
                                ),
                              ],
                            ),
                          ),
                        ),
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'tiêm là 1 lần duy nhất',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 12,color: Colors.blue),
                            ),
                          ),
                        ),
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Checkbox(
                              value: true, // Set the initial value of the checkbox (true or false)
                              onChanged: (bool? value) {
                                // Handle the onChanged event if you need to react to checkbox changes
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(
                    color: Colors.blue,
                    width: 2.0, // Độ dày của đường viền
                  ),
                  borderRadius:
                  BorderRadius.circular(50.0), // Độ cong của góc
                ),
                child: Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Text(
                    'Mũi Tiêm 3in1',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.0), // Adjust the spacing as needed
              Text(
                'Tất cả 3 bệnh này đều dễ lây qua đường hô hấp. '
                    'Nếu trong quá trình mang thai người phụ nữ mắc một trong '
                    'ba bệnh này thì nguy cơ sinh con ra bị dị tật, suy dinh dưỡng, '
                    'là rất cao.',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 20,),
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(
                    color: Colors.blue,
                    width: 2.0, // Độ dày của đường viền
                  ),
                  borderRadius:
                  BorderRadius.circular(50.0), // Độ cong của góc
                ),
                child: Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Text(
                    'Viêm Gan B',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.0), // Adjust the spacing as needed
              Text(
                'Đây là căn bệnh có tỷ lệ lây lan cao từ mẹ sang con trong'
                    ' quá trình mang thai. Do đó, để phòng bệnh cho trẻ cũng như'
                    'bảo vệ sức khỏe của bản thân, các bà mẹ nên làm xét nghiệm viêm'
                    ' gan B và tiêm phòng.',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 20,),
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(
                    color: Colors.blue,
                    width: 2.0, // Độ dày của đường viền
                  ),
                  borderRadius:
                  BorderRadius.circular(50.0), // Độ cong của góc
                ),
                child: Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Text(
                    'Cúm',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.0), // Adjust the spacing as needed
              Text(
                'Nếu thai phụ bị cúm trong quá trình mang thai cũng rất '
                    'ảnh hưởng đến sự phát triển của thai nhi. Đặc biệt là bị '
                    'cúm trong ba tháng đầu, nguy cơ cao gây dị tật ở thai nhi '
                    'như sứt môi, hở hàm ếch, sinh non và nhẹ cân. '
                    'Được tiêm phòng, tỷ lệ mắc cúm sẽ giảm đi đáng kể, '
                    'thời gian hiệu lực của vắc xin thường trong vòng 1 năm.',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 20,),
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(
                    color: Colors.blue,
                    width: 2.0, // Độ dày của đường viền
                  ),
                  borderRadius:
                  BorderRadius.circular(50.0), // Độ cong của góc
                ),
                child: Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Text(
                    'Bạch hầu,ho gà,uốn ván',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.0), // Adjust the spacing as needed
              Text(
                'Đây là loại vắc xin phối hợp có thể giúp phòng những bệnh '
                    'trên hiệu quả cho con. Số lượng tiêm là 1 lần duy nhất. '
                    'Bạch hầu và ho gà là những căn bệnh có thể lây trực tiếp qua '
                    'đường hô hấp nên khả năng mắc phải trong quá trình mang bầu là '
                    'rất cao. Uốn ván có thể gặp nếu chủ quan trước những vết thương,'
                    ' vì loại vi khuẩn này tồn tại rất bền vững trong môi trường tự nhiên.',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
