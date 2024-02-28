import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:timeline_tile/timeline_tile.dart';

class Exercise extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Color(0xffEEDDD4),
        appBar: AppBar(
          title: Text('Thể Dục'),
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
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xffC1BDBD), // Màu của đường viền
                    width: 2.0, // Độ dày của đường viền
                  ),
                  borderRadius: BorderRadius.circular(8.0), // Độ cong của góc
                ),
                padding: EdgeInsets.only(
                    left: 20.0, right: 20.0, bottom: 20.0, top: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Left side: Icon inside a circular border radius
                        Container(
                          padding: EdgeInsets.all(10.0),
                          margin: EdgeInsets.only(right: 10.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.0),
                            color: Colors.green, // Change the color as needed
                          ),
                          child: Image.asset(
                            'assets/icons/footprints.png', // Replace with the actual image path
                            width: 24.0, // Set the width as needed
                            height: 24.0, // Set the height as needed
                            color: Colors.white, // Image color
                          ),
                        ),
                        Container(
                          child: Text(
                            '2000',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                        Container(
                          child: Text(
                            'bước',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                        ),
                        Container(
                          width: 165.0, // Customize the width as needed
                          height: 15.0,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black, // Border color
                              width: 2.0, // Border width
                            ),
                            color: Colors.green, // Change the color as needed
                            borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(
                                  7.5), // Radius for the left end
                              right: Radius.circular(7.5),
                              // Radius for the right end
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            '100%',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Left side: Icon inside a circular border radius
                        Container(
                          padding: EdgeInsets.all(10.0),
                          margin: EdgeInsets.only(right: 10.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.0),
                            color: Colors.red, // Change the color as needed
                          ),
                          child: Image.asset(
                            'assets/icons/chronometer.png', // Replace with the actual image path
                            width: 24.0, // Set the width as needed
                            height: 24.0, // Set the height as needed
                          ),
                        ),
                        // Right side: Customized horizontal bar
                        Container(
                          child: Text(
                            '1h30',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                        Container(
                          child: Text(
                            'phút',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                        ),
                        Container(
                          width: 165.0, // Customize the width as needed
                          height: 15.0,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black, // Border color
                              width: 2.0, // Border width
                            ),
                            color: Colors.red, // Change the color as needed
                            borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(
                                  7.5), // Radius for the left end
                              right: Radius.circular(7.5),
                              // Radius for the right end
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            '100%',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Left side: Icon inside a circular border radius
                        Container(
                          padding: EdgeInsets.all(10.0),
                          margin: EdgeInsets.only(right: 10.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.0),
                            color:
                                Colors.lightBlue, // Change the color as needed
                          ),
                          child: Image.asset(
                            'assets/icons/fire.png', // Replace with the actual image path
                            width: 24.0, // Set the width as needed
                            height: 24.0, // Set the height as needed
                            color: Colors.white, // Image color
                          ),
                        ),
                        // Right side: Customized horizontal bar
                        Container(
                          child: Text(
                            '300',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                        Container(
                          child: Text(
                            'Kcal',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                        ),
                        Container(
                          width: 165.0, // Customize the width as needed
                          height: 15.0,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black, // Border color
                              width: 2.0, // Border width
                            ),
                            color:
                                Colors.lightBlue, // Change the color as needed
                            borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(
                                  7.5), // Radius for the left end
                              right: Radius.circular(7.5),
                              // Radius for the right end
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            '100%',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                    // Add more children to the Column if needed
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xffC1BDBD), // Màu của đường viền
                    width: 2.0, // Độ dày của đường viền
                  ),
                  borderRadius: BorderRadius.circular(8.0), // Độ cong của góc
                ),
                padding: EdgeInsets.only(
                    left: 10.0, right: 10.0, bottom: 10.0, top: 10.0),
                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceAround, // Adjust as needed
                  children: [
                    Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start, // Align text to the start
                      children: [
                        Container(
                          child: Text(
                            '2000',
                            style: TextStyle(
                                color: Colors.blueAccent,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          child: Text(
                            '/4000 bước',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 90.0, // Set the width as needed
                      height: 90.0, // Set the height as needed
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        border: Border.all(
                          color: Colors.green, // Border color
                          width: 3.0, // Border width
                        ), // Make it a circular container
                        image: DecorationImage(
                          image: AssetImage(
                              'assets/icons/jogging.png'), // Provide the image path
                          fit: BoxFit.cover, // Adjust the fit as needed
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xffC1BDBD), // Màu của đường viền
                    width: 2.0, // Độ dày của đường viền
                  ),
                  borderRadius: BorderRadius.circular(8.0), // Độ cong của góc
                ),
                padding: EdgeInsets.only(
                    left: 20.0, right: 20.0, bottom: 20.0, top: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Left side: Icon inside a circular border radius
                        Container(
                          padding: EdgeInsets.all(10.0),
                          margin: EdgeInsets.only(right: 10.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.0),
                            color: Colors.green, // Change the color as needed
                          ),
                          child: Image.asset(
                            'assets/icons/exercise.png', // Replace with the actual image path
                            width: 24.0, // Set the width as needed
                            height: 24.0, // Set the height as needed
                            color: Colors.white, // Image color
                          ),
                        ),
                        // Right side: Customized horizontal bar
                        Container(
                          child: Text(
                            'Chạy Bộ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Left side: Icon inside a circular border radius
                        Container(
                          padding: EdgeInsets.all(10.0),
                          margin: EdgeInsets.only(right: 10.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.0),
                            color: Colors.green, // Change the color as needed
                          ),
                          child: Image.asset(
                            'assets/icons/bicycle.png', // Replace with the actual image path
                            width: 24.0, // Set the width as needed
                            height: 24.0, // Set the height as needed
                            color: Colors.white, // Image color
                          ),
                        ),
                        // Right side: Customized horizontal bar
                        Container(
                          child: Text(
                            'Đạp xe',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Left side: Icon inside a circular border radius
                        Container(
                          padding: EdgeInsets.all(10.0),
                          margin: EdgeInsets.only(right: 10.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.0),
                            color: Colors.green, // Change the color as needed
                          ),
                          child: Image.asset(
                            'assets/icons/swimming.png', // Replace with the actual image path
                            width: 24.0, // Set the width as needed
                            height: 24.0, // Set the height as needed
                            color: Colors.white, // Image color
                          ),
                        ),
                        // Right side: Customized horizontal bar
                        Container(
                          child: Text(
                            'Bơi',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Left side: Icon inside a circular border radius
                        Container(
                          padding: EdgeInsets.all(10.0),
                          margin: EdgeInsets.only(right: 10.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.0),
                            color: Colors.green, // Change the color as needed
                          ),
                          child: Image.asset(
                            'assets/icons/yoga.png', // Replace with the actual image path
                            width: 24.0, // Set the width as needed
                            height: 24.0, // Set the height as needed
                            color: Colors.white, // Image color
                          ),
                        ),
                        // Right side: Customized horizontal bar
                        Container(
                          child: Text(
                            'Yoga',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                        )
                      ],
                    ),
                    // Add more children to the Column if needed
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xffC1BDBD), // Màu của đường viền
                    width: 2.0, // Độ dày của đường viền
                  ),
                  borderRadius: BorderRadius.circular(8.0), // Độ cong của góc
                ),
                padding: EdgeInsets.only(
                    left: 20.0, right: 20.0, bottom: 20.0, top: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        // Left side: Icon inside a circular border radius
                        Container(
                          padding: EdgeInsets.all(10.0),
                          margin: EdgeInsets.only(right: 10.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.0),
                            color: Colors.green, // Change the color as needed
                          ),
                          child: Image.asset(
                            'assets/icons/heart.png', // Replace with the actual image path
                            width: 24.0, // Set the width as needed
                            height: 24.0, // Set the height as needed
                            color: Colors.white, // Image color
                          ),
                        ),
                        Container(
                          child: Text(
                            'Theo Dõi Chu Kỳ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 24),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        // Left side: Icon inside a circular border radius
                        Container(
                          child: Text(
                            'Theo dõi chu kỳ tập luyện của mẹ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    // Add more children to the Column if needed
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}
