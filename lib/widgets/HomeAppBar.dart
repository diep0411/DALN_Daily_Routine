import 'package:flutter/material.dart';
class HomeAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xffEDC8B3),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Đặt căn giữa trái và phải
        children: [
          Icon(
            Icons.settings,
            size: 30,
            color: Color(0xff48477F),
          ),
          Padding(
            padding: EdgeInsets.all(0), // Điều chỉnh giữa icon và văn bản
            child: Text(
              "BabySync",
              style: TextStyle(
                fontSize: 30,
                fontFamily: 'Dancing Script',
                color: Color(0xff48477F),
              ),
            ),
          ),
          Icon(
            // Thêm biểu tượng khác nếu cần thiết
            Icons.note_add,
            size: 30,
            color: Color(0xff48477F),
          ),
        ],
      ),
    );
  }
}
