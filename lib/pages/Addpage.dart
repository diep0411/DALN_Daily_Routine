import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class AddPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: Color(0xffEEDDD4),
    body: SingleChildScrollView(
      child: Column(
        children: [
          // A widget to display the image
          TimelineTile(
            alignment: TimelineAlign.manual,
            lineXY: 0.1,
            isFirst: true,
            indicatorStyle: IndicatorStyle(
              width: 20,
              color: Colors.blue,
              iconStyle: IconStyle(
                iconData: Icons.pregnant_woman,
                color: Colors.white,
              ),
            ),
            endChild: Container(
              padding: EdgeInsets.all(8),
              child: Text(
                'Siêu âm phát hiện thai',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          TimelineTile(
            alignment: TimelineAlign.manual,
            lineXY: 0.1,
            indicatorStyle: IndicatorStyle(
              width: 20,
              color: Colors.blue,
              iconStyle: IconStyle(
                iconData: Icons.local_hospital,
                color: Colors.white,
              ),
            ),
            endChild: Container(
              padding: EdgeInsets.all(8),
              child: Text(
                'Khám các bệnh phụ khoa',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          TimelineTile(
            alignment: TimelineAlign.manual,
            lineXY: 0.1,
            indicatorStyle: IndicatorStyle(
              width: 20,
              color: Colors.blue,
              iconStyle: IconStyle(
                iconData: Icons.warning,
                color: Colors.white,
              ),
            ),
            endChild: Container(
              padding: EdgeInsets.all(8),
              child: Text(
                'Bệnh lây qua đường tình dục',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          TimelineTile(
            alignment: TimelineAlign.manual,
            lineXY: 0.9,
            indicatorStyle: IndicatorStyle(
              width: 20,
              color: Colors.blue,
              iconStyle: IconStyle(
                iconData: Icons.note,
                color: Colors.white,
              ),
            ),
            startChild: Container(
              padding: EdgeInsets.all(8),
              alignment: Alignment.centerRight,
              child: Text(
                'Những lưu ý tuần đầu thai kỳ',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          TimelineTile(
            alignment: TimelineAlign.manual,
            lineXY: 0.9,
            indicatorStyle: IndicatorStyle(
              width: 20,
              color: Colors.blue,
              iconStyle: IconStyle(
                iconData: Icons.note,
                color: Colors.white,
              ),
            ),
            startChild: Container(
              padding: EdgeInsets.all(8),
              alignment: Alignment.centerRight,
              child: Text(
                'Những lưu ý tuần 2 thai kỳ',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          TimelineTile(
            alignment: TimelineAlign.manual,
            lineXY: 0.9,
            isLast: true,
            indicatorStyle: IndicatorStyle(
              width: 20,
              color: Colors.blue,
              iconStyle: IconStyle(
                iconData: Icons.note,
                color: Colors.white,
              ),
            ),
            startChild: Container(
              padding: EdgeInsets.all(8),
              alignment: Alignment.centerRight,
              child: Text(
                'Những lưu ý tháng đầy thai kỳ',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          // A widget to display a row of icons and text
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   children: [
          //     Column(
          //       children: [
          //         Icon(Icons.add, color: Colors.blue[300]),
          //         Text(
          //           'Thêm màu',
          //           style: TextStyle(
          //             color: Colors.blue[300],
          //           ),
          //         ),
          //       ],
          //     ),
          //     Column(
          //       children: [
          //         Icon(Icons.edit, color: Colors.blue[300]),
          //         Text(
          //           'Chỉnh sửa',
          //           style: TextStyle(
          //             color: Colors.blue[300],
          //           ),
          //         ),
          //       ],
          //     ),
          //     Column(
          //       children: [
          //         Icon(Icons.share, color: Colors.blue[300]),
          //         Text(
          //           'Chia sẻ',
          //           style: TextStyle(
          //             color: Colors.blue[300],
          //           ),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
        ],
      ),
    ),
  );
}
