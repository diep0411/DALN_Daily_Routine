import 'package:babyami/function/Exercise.dart';
import 'package:babyami/function/HandBook.dart';
import 'package:babyami/function/Mydoctor.dart';
import 'package:babyami/function/Nutrition.dart';
import 'package:babyami/function/date_important.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Lấy thời gian hiện tại
    DateTime now = DateTime.now();

    // Ngày bắt đầu (ví dụ: 1 tháng 1)
    DateTime startDate = DateTime(now.year, 1, 1);

    // Ngày kết thúc (ví dụ: 21 tháng 1)
    DateTime endDate = DateTime(now.year, 10, 21);

    // Tính số tuần và số ngày đã trải qua
    Duration passedDuration = now.difference(startDate);
    int passedWeeks = passedDuration.inDays ~/ 7;
    int passedDays = passedDuration.inDays % 7;

    // Tính số tuần và số ngày còn lại
    Duration remainingDuration = endDate.difference(now);
    int remainingWeeks = remainingDuration.inDays ~/ 7;
    int remainingDays = remainingDuration.inDays % 7;

    // Danh sách tên tháng viết tắt tiếng Anh
    List<String> monthAbbreviations = [
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'Jun',
      'Jul',
      'Aug',
      'Sep',
      'Oct',
      'Nov',
      'Dec'
    ];

    // Lấy tên viết tắt của tháng hiện tại
    String monthAbbreviation = monthAbbreviations[now.month - 1];

    return Scaffold(
      backgroundColor: Color(0xffEEDDD4),
      body: ListView(
        children: [
          // Center the images in the middle of the screen
          Center(
            child: Stack(
              children: [
                // The background image 'ebe.png'
                Image.asset(
                  'assets/images/ebe.png',
                  height: 334, // Adjust the height as needed
                  width: 350, // Adjust the width as needed
                  fit: BoxFit.contain,
                ),
                // The overlay image (adjust the position as needed)
                Positioned(
                  top: -25,
                  left: 0,
                  child: Image.asset(
                    'assets/images/Logo.png', // Replace with the actual overlay image path
                    height: 400, // Adjust the height as needed
                    width: 350, // Adjust the width as needed
                    fit: BoxFit.contain,
                  ),
                ),
                Positioned(
                  // The text of the date and the remaining weeks and days.
                  top: 20,
                  right: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '$monthAbbreviation\n${now.day}',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff48477F)),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 20,
                  left: 90,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '$passedWeeks tuần $passedDays ngày',
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xff48477F),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 60,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Còn lại:',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xff48477F),
                        ),
                      ),
                      Text(
                        '$remainingWeeks tuần $remainingDays ngày',
                        style: TextStyle(
                          fontSize: 25,
                          color: Color(0xff48477F),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                top: 50), // Điều chỉnh giảm khoảng cách giữa các phần tử
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HandBook()),
                        );
                        // TODO: Handle the handbook icon tap event.
                      },
                      child: Container(
                        padding: EdgeInsets.all(
                            8.0), // Điều chỉnh khoảng cách giữa biểu tượng và đường viền
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xff68A8DA), // Màu của đường viền
                            width: 2.0, // Độ dày của đường viền
                          ),
                          borderRadius:
                              BorderRadius.circular(8.0), // Độ cong của góc
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.book,
                              size: 50,
                              color: Color(0xff48477F),
                            ),
                            Text(
                              'Handbook',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff48477F),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Nutrition()),
                        );
                        // TODO: Handle the handbook icon tap event.
                      },
                      child: Container(
                        padding: EdgeInsets.only(
                            top: 8.0,
                            right: 12.0,
                            left: 12.0,
                            bottom:
                                8.0), // Điều chỉnh khoảng cách giữa biểu tượng và đường viền
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xff68A8DA), // Màu của đường viền
                            width: 2.0, // Độ dày của đường viền
                          ),
                          borderRadius:
                              BorderRadius.circular(8.0), // Độ cong của góc
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.food_bank_outlined,
                              size: 50,
                              color: Color(0xff48477F),
                            ),
                            Text(
                              'Nutrition',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff48477F),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        // TODO: Handle the handbook icon tap event.
                      },
                      child: Container(
                        padding: EdgeInsets.only(
                            top: 8.0,
                            right: 12.0,
                            left: 12.0,
                            bottom:
                                8.0), // Điều chỉnh khoảng cách giữa biểu tượng và đường viền
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xff68A8DA), // Màu của đường viền
                            width: 2.0, // Độ dày của đường viền
                          ),
                          borderRadius:
                              BorderRadius.circular(8.0), // Độ cong của góc
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.medical_services,
                              size: 50,
                              color: Color(0xff48477F),
                            ),
                            Text(
                              'Medicine',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff48477F),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // Thêm các InkWell khác tương tự tại đây
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DateImportant()),
                        );
                        // TODO: Handle the handbook icon tap event.
                      },
                      child: Container(
                        padding: EdgeInsets.only(
                            top: 8.0,
                            right: 18.0,
                            left: 15.0,
                            bottom:
                                8.0), // Điều chỉnh khoảng cách giữa biểu tượng và đường viền
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xff68A8DA), // Màu của đường viền
                            width: 2.0, // Độ dày của đường viền
                          ),
                          borderRadius:
                              BorderRadius.circular(8.0), // Độ cong của góc
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.calendar_today,
                              size: 40,
                              color: Color(0xff48477F),
                            ),
                            Column(
                              children: [
                                Text(
                                  'Date',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff48477F),
                                  ),
                                ),
                                Text(
                                  'important',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff48477F),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Exercise()),
                        );
                        // TODO: Handle the handbook icon tap event.
                      },
                      child: Container(
                        padding: EdgeInsets.only(
                            top: 8.0,
                            right: 12.0,
                            left: 12.0,
                            bottom:
                                8.0), // Điều chỉnh khoảng cách giữa biểu tượng và đường viền
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xff68A8DA), // Màu của đường viền
                            width: 2.0, // Độ dày của đường viền
                          ),
                          borderRadius:
                              BorderRadius.circular(8.0), // Độ cong của góc
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.directions_run,
                              size: 50,
                              color: Color(0xff48477F),
                            ),
                            Text(
                              'exercise',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff48477F),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Mydoctor()),
                        );
                        // TODO: Handle the handbook icon tap event.
                      },
                      child: Container(
                        padding: EdgeInsets.all(
                            8.0), // Điều chỉnh khoảng cách giữa biểu tượng và đường viền
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xff68A8DA), // Màu của đường viền
                            width: 2.0, // Độ dày của đường viền
                          ),
                          borderRadius:
                              BorderRadius.circular(8.0), // Độ cong của góc
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.account_box_rounded,
                              size: 50,
                              color: Color(0xff48477F),
                            ),
                            Text(
                              'My Doctor',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff48477F),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // Thêm các InkWell khác tương tự tại đây
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
