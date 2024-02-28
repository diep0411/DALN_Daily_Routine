import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:timeline_tile/timeline_tile.dart';

class DateImportant extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Color(0xffEEDDD4),
        appBar: AppBar(
          title: Text('Ngày quan trọng'),
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
          child: Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                //Trước 6 tuần
                //Trái 1
                Container(
                  padding: EdgeInsets.only(top: 30),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Trước 6 tuần',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                TimelineTile(
                  alignment: TimelineAlign.center,
                  lineXY: 0.1,
                  isFirst: true,
                  indicatorStyle: IndicatorStyle(
                    width: 10,
                    color: Colors.blue,
                  ),
                  startChild: Container(
                    padding: EdgeInsets.all(8),
                    child: Flexible(
                      child: Text(
                        'Siêu âm phát hiện thai',
                        style: TextStyle(
                          fontSize: 16,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  beforeLineStyle: LineStyle(
                    color: Colors.grey, // Màu sắc của đường timeline
                    thickness: 2, // Độ dày của đường timeline
                  ),
                ),
                TimelineTile(
                  alignment: TimelineAlign.center,
                  lineXY: 0.1,
                  indicatorStyle: IndicatorStyle(
                    width: 10,
                    color: Colors.blue,
                  ),
                  startChild: Container(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      'Khám các bệnh phụ khoa',
                      style: TextStyle(
                        fontSize: 16,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  beforeLineStyle: LineStyle(
                    color: Colors.grey, // Màu sắc của đường timeline
                    thickness: 2, // Độ dày của đường timeline
                  ),
                ),
                TimelineTile(
                  alignment: TimelineAlign.center,
                  lineXY: 0.1,
                  indicatorStyle: IndicatorStyle(
                    width: 10,
                    color: Colors.blue,
                  ),
                  startChild: Container(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      'Bệnh lây qua đường tình dục',
                      style: TextStyle(
                        fontSize: 16,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  beforeLineStyle: LineStyle(
                    color: Colors.grey, // Màu sắc của đường timeline
                    thickness: 2, // Độ dày của đường timeline
                  ),
                ),
                //PHẢI 1
                TimelineTile(
                  alignment: TimelineAlign.center,
                  lineXY: 0.9,
                  indicatorStyle: IndicatorStyle(
                    width: 10,
                    color: Colors.brown,
                  ),
                  endChild: Container(
                    padding: EdgeInsets.all(8),
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Những lưu ý tuần đầu thai kỳ',
                      style: TextStyle(
                        fontSize: 16,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  beforeLineStyle: LineStyle(
                    color: Colors.grey, // Màu sắc của đường timeline
                    thickness: 2, // Độ dày của đường timeline
                  ),
                ),
                TimelineTile(
                  alignment: TimelineAlign.center,
                  lineXY: 0.9,
                  indicatorStyle: IndicatorStyle(
                    width: 10,
                    color: Colors.brown,
                  ),
                  endChild: Container(
                    padding: EdgeInsets.all(8),
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Những lưu ý tuần 2 thai kỳ',
                      style: TextStyle(
                        fontSize: 16,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  beforeLineStyle: LineStyle(
                    color: Colors.grey, // Màu sắc của đường timeline
                    thickness: 2, // Độ dày của đường timeline
                  ),
                ),
                TimelineTile(
                  alignment: TimelineAlign.center,
                  lineXY: 0.9,
                  isLast: false,
                  indicatorStyle: IndicatorStyle(
                    width: 10,
                    color: Colors.brown,
                  ),
                  endChild: Container(
                    padding: EdgeInsets.all(8),
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Những lưu ý tháng đầy thai kỳ',
                      style: TextStyle(
                        fontSize: 16,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  beforeLineStyle: LineStyle(
                    color: Colors.grey, // Màu sắc của đường timeline
                    thickness: 2, // Độ dày của đường timeline
                  ),
                ),
                TimelineTile(
                  alignment: TimelineAlign.center,
                  lineXY: 0.9,
                  indicatorStyle: IndicatorStyle(
                    width: 10,
                    color: Colors.brown,
                  ),
                  endChild: Container(
                    padding: EdgeInsets.all(8),
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Trang phục phù hợp cho mẹ bầu',
                      style: TextStyle(
                        fontSize: 16,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  beforeLineStyle: LineStyle(
                    color: Colors.grey, // Màu sắc của đường timeline
                    thickness: 2, // Độ dày của đường timeline
                  ),
                ),
                //TRÁI 2
                TimelineTile(
                  alignment: TimelineAlign.center,
                  lineXY: 0.1,
                  indicatorStyle: IndicatorStyle(
                    width: 10,
                    color: Colors.blue,
                  ),
                  startChild: Container(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      'Xác định chỉ số BMI',
                      style: TextStyle(
                        fontSize: 16,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  beforeLineStyle: LineStyle(
                    color: Colors.grey, // Màu sắc của đường timeline
                    thickness: 2, // Độ dày của đường timeline
                  ),
                ),
                TimelineTile(
                  alignment: TimelineAlign.center,
                  lineXY: 0.1,
                  indicatorStyle: IndicatorStyle(
                    width: 10,
                    color: Colors.blue,
                  ),
                  startChild: Container(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      'Đo huyết áp khi mang thai và lý do',
                      style: TextStyle(
                        fontSize: 16,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  beforeLineStyle: LineStyle(
                    color: Colors.grey, // Màu sắc của đường timeline
                    thickness: 2, // Độ dày của đường timeline
                  ),
                ),
                TimelineTile(
                  alignment: TimelineAlign.center,
                  lineXY: 0.1,
                  indicatorStyle: IndicatorStyle(
                    width: 10,
                    color: Colors.blue,
                  ),
                  startChild: Container(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      'Xét nghiệm nước tiểu',
                      style: TextStyle(
                        fontSize: 16,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  beforeLineStyle: LineStyle(
                    color: Colors.grey, // Màu sắc của đường timeline
                    thickness: 2, // Độ dày của đường timeline
                  ),
                ),
                TimelineTile(
                  alignment: TimelineAlign.center,
                  lineXY: 0.1,
                  indicatorStyle: IndicatorStyle(
                    width: 10,
                    color: Colors.blue,
                  ),
                  startChild: Container(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      'Siêu âm trong thai kỳ',
                      style: TextStyle(
                        fontSize: 16,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  beforeLineStyle: LineStyle(
                    color: Colors.grey, // Màu sắc của đường timeline
                    thickness: 2, // Độ dày của đường timeline
                  ),
                ),
                //PHẢI 2
                TimelineTile(
                  alignment: TimelineAlign.center,
                  lineXY: 0.9,
                  indicatorStyle: IndicatorStyle(
                    width: 10,
                    color: Colors.brown,
                  ),
                  endChild: Container(
                    padding: EdgeInsets.all(8),
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Mẹ nên tránh giày cao gót nhé!',
                      style: TextStyle(
                        fontSize: 16,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  beforeLineStyle: LineStyle(
                    color: Colors.grey, // Màu sắc của đường timeline
                    thickness: 2, // Độ dày của đường timeline
                  ),
                ),
                TimelineTile(
                  alignment: TimelineAlign.center,
                  lineXY: 0.9,
                  indicatorStyle: IndicatorStyle(
                    width: 10,
                    color: Colors.brown,
                  ),
                  endChild: Container(
                    padding: EdgeInsets.all(8),
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Tập yoga rất tốt cho mẹ',
                      style: TextStyle(
                        fontSize: 16,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  beforeLineStyle: LineStyle(
                    color: Colors.grey, // Màu sắc của đường timeline
                    thickness: 2, // Độ dày của đường timeline
                  ),
                ),
                TimelineTile(
                  alignment: TimelineAlign.center,
                  lineXY: 0.9,
                  isLast: true,
                  indicatorStyle: IndicatorStyle(
                    width: 10,
                    color: Colors.brown,
                  ),
                  endChild: Container(
                    padding: EdgeInsets.all(8),
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Mẹ luôn cười khi mang thai con nhé!',
                      style: TextStyle(
                        fontSize: 16,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  beforeLineStyle: LineStyle(
                    color: Colors.grey, // Màu sắc của đường timeline
                    thickness: 2, // Độ dày của đường timeline
                  ),
                ),
                Divider(
                  thickness: 0.5, // Độ dày của đường kẻ
                  color: Colors.grey, // Màu sắc của đường kẻ
                ),

                // 7-10 Tuần
                // Trái 1
                Container(
                  padding: EdgeInsets.only(top: 30),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      '7-10 Tuần',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                TimelineTile(
                  alignment: TimelineAlign.center,
                  lineXY: 0.1,
                  isFirst: true,
                  indicatorStyle: IndicatorStyle(
                    width: 10,
                    color: Colors.blue,
                  ),
                  startChild: Container(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      'Xét nghiệm Rubella IgM và IgG',
                      style: TextStyle(
                        fontSize: 16,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  beforeLineStyle: LineStyle(
                    color: Colors.grey, // Màu sắc của đường timeline
                    thickness: 2, // Độ dày của đường timeline
                  ),
                ),
                TimelineTile(
                  alignment: TimelineAlign.center,
                  lineXY: 0.1,
                  indicatorStyle: IndicatorStyle(
                    width: 10,
                    color: Colors.blue,
                  ),
                  startChild: Container(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      'Xét nghiệm sàng lọc virus Zika',
                      style: TextStyle(
                        fontSize: 16,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  beforeLineStyle: LineStyle(
                    color: Colors.grey, // Màu sắc của đường timeline
                    thickness: 2, // Độ dày của đường timeline
                  ),
                ),
                // Phải 1
                TimelineTile(
                  alignment: TimelineAlign.center,
                  lineXY: 0.9,
                  indicatorStyle: IndicatorStyle(
                    width: 10,
                    color: Colors.brown,
                  ),
                  endChild: Container(
                    padding: EdgeInsets.all(8),
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Mẹ có nên uống nhiều nước không?',
                      style: TextStyle(
                        fontSize: 16,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  beforeLineStyle: LineStyle(
                    color: Colors.grey, // Màu sắc của đường timeline
                    thickness: 2, // Độ dày của đường timeline
                  ),
                ),
                TimelineTile(
                  alignment: TimelineAlign.center,
                  lineXY: 0.9,
                  indicatorStyle: IndicatorStyle(
                    width: 10,
                    color: Colors.brown,
                  ),
                  endChild: Container(
                    padding: EdgeInsets.all(8),
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Siêu âm thai nhi có hại cho con không?',
                      style: TextStyle(
                        fontSize: 16,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  beforeLineStyle: LineStyle(
                    color: Colors.grey, // Màu sắc của đường timeline
                    thickness: 2, // Độ dày của đường timeline
                  ),
                ),
                TimelineTile(
                  alignment: TimelineAlign.center,
                  lineXY: 0.9,
                  isLast: true,
                  indicatorStyle: IndicatorStyle(
                    width: 10,
                    color: Colors.brown,
                  ),
                  endChild: Container(
                    padding: EdgeInsets.all(8),
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Mẹ đang bị táo bón ạ?',
                      style: TextStyle(
                        fontSize: 16,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  beforeLineStyle: LineStyle(
                    color: Colors.grey, // Màu sắc của đường timeline
                    thickness: 2, // Độ dày của đường timeline
                  ),
                ),
                Divider(
                  thickness: 0.5, // Độ dày của đường kẻ
                  color: Colors.grey, // Màu sắc của đường kẻ
                ),

                // 10-13 Tuần
                // Trái 1
                Container(
                  padding: EdgeInsets.only(top: 30),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      '10-13 Tuần',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                TimelineTile(
                  alignment: TimelineAlign.center,
                  lineXY: 0.1,
                  isFirst: true,
                  indicatorStyle: IndicatorStyle(
                    width: 10,
                    color: Colors.blue,
                  ),
                  startChild: Container(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      'Mẹ thấy tim thai của con chưa',
                      style: TextStyle(
                        fontSize: 16,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  beforeLineStyle: LineStyle(
                    color: Colors.grey, // Màu sắc của đường timeline
                    thickness: 2, // Độ dày của đường timeline
                  ),
                ),
                TimelineTile(
                  alignment: TimelineAlign.center,
                  lineXY: 0.1,
                  isFirst: false,
                  indicatorStyle: IndicatorStyle(
                    width: 10,
                    color: Colors.blue,
                  ),
                  startChild: Container(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      'Xét nghiệm bệnh thiếu máu tán huyết',
                      style: TextStyle(
                        fontSize: 16,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  beforeLineStyle: LineStyle(
                    color: Colors.grey, // Màu sắc của đường timeline
                    thickness: 2, // Độ dày của đường timeline
                  ),
                ),
                TimelineTile(
                  alignment: TimelineAlign.center,
                  lineXY: 0.1,
                  isFirst: false,
                  indicatorStyle: IndicatorStyle(
                    width: 10,
                    color: Colors.blue,
                  ),
                  startChild: Container(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      'Xét nghiệm double test',
                      style: TextStyle(
                        fontSize: 16,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  beforeLineStyle: LineStyle(
                    color: Colors.grey, // Màu sắc của đường timeline
                    thickness: 2, // Độ dày của đường timeline
                  ),
                ),
                TimelineTile(
                  alignment: TimelineAlign.center,
                  lineXY: 0.1,
                  indicatorStyle: IndicatorStyle(
                    width: 10,
                    color: Colors.blue,
                  ),
                  startChild: Container(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      'Tầm soát dị tật thai nhi(lần 1)',
                      style: TextStyle(
                        fontSize: 16,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  beforeLineStyle: LineStyle(
                    color: Colors.grey, // Màu sắc của đường timeline
                    thickness: 2, // Độ dày của đường timeline
                  ),
                ),
                // Phải 1
                TimelineTile(
                  alignment: TimelineAlign.center,
                  lineXY: 0.9,
                  indicatorStyle: IndicatorStyle(
                    width: 10,
                    color: Colors.brown,
                  ),
                  endChild: Container(
                    padding: EdgeInsets.all(8),
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Thị lực dạo này của mẹ thế nào',
                      style: TextStyle(
                        fontSize: 16,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  beforeLineStyle: LineStyle(
                    color: Colors.grey, // Màu sắc của đường timeline
                    thickness: 2, // Độ dày của đường timeline
                  ),
                ),
                TimelineTile(
                  alignment: TimelineAlign.center,
                  lineXY: 0.9,
                  indicatorStyle: IndicatorStyle(
                    width: 10,
                    color: Colors.brown,
                  ),
                  endChild: Container(
                    padding: EdgeInsets.all(8),
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Mẹ vào đầu thai kỳ rồi đó ạ!',
                      style: TextStyle(
                        fontSize: 16,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  beforeLineStyle: LineStyle(
                    color: Colors.grey, // Màu sắc của đường timeline
                    thickness: 2, // Độ dày của đường timeline
                  ),
                ),
                // Trái 2
                TimelineTile(
                  alignment: TimelineAlign.center,
                  lineXY: 0.1,
                  indicatorStyle: IndicatorStyle(
                    width: 10,
                    color: Colors.blue,
                  ),
                  startChild: Container(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      'Siêu âm đo độ mờ da gáy',
                      style: TextStyle(
                        fontSize: 16,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  beforeLineStyle: LineStyle(
                    color: Colors.grey, // Màu sắc của đường timeline
                    thickness: 2, // Độ dày của đường timeline
                  ),
                ),
                TimelineTile(
                  alignment: TimelineAlign.center,
                  lineXY: 0.1,
                  indicatorStyle: IndicatorStyle(
                    width: 10,
                    color: Colors.blue,
                  ),
                  startChild: Container(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      'Kiểm tra lượng nước ối của mẹ',
                      style: TextStyle(
                        fontSize: 16,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  beforeLineStyle: LineStyle(
                    color: Colors.grey, // Màu sắc của đường timeline
                    thickness: 2, // Độ dày của đường timeline
                  ),
                ),
                TimelineTile(
                  alignment: TimelineAlign.center,
                  lineXY: 0.1,
                  indicatorStyle: IndicatorStyle(
                    width: 10,
                    color: Colors.blue,
                  ),
                  startChild: Container(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      'Xét nghiệm sinh thiết gai nhau(CVS)',
                      style: TextStyle(
                        fontSize: 16,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  beforeLineStyle: LineStyle(
                    color: Colors.grey, // Màu sắc của đường timeline
                    thickness: 2, // Độ dày của đường timeline
                  ),
                ),
                // phải 2
                TimelineTile(
                  alignment: TimelineAlign.center,
                  lineXY: 0.9,
                  indicatorStyle: IndicatorStyle(
                    width: 10,
                    color: Colors.brown,
                  ),
                  endChild: Container(
                    padding: EdgeInsets.all(8),
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Nhiệt độ của mẹ tăng khi mang thai',
                      style: TextStyle(
                        fontSize: 16,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  beforeLineStyle: LineStyle(
                    color: Colors.grey, // Màu sắc của đường timeline
                    thickness: 2, // Độ dày của đường timeline
                  ),
                ),
                TimelineTile(
                  alignment: TimelineAlign.center,
                  lineXY: 0.9,
                  isLast: true,
                  indicatorStyle: IndicatorStyle(
                    width: 10,
                    color: Colors.brown,
                  ),
                  endChild: Container(
                    padding: EdgeInsets.all(8),
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Con muốn được nói chuyện với bố mẹ!',
                      style: TextStyle(
                        fontSize: 16,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  beforeLineStyle: LineStyle(
                    color: Colors.grey, // Màu sắc của đường timeline
                    thickness: 2, // Độ dày của đường timeline
                  ),
                ),
                Divider(
                  thickness: 0.5, // Độ dày của đường kẻ
                  color: Colors.grey, // Màu sắc của đường kẻ
                ),
              ],
            ),
          ),
        ),
      );
}
