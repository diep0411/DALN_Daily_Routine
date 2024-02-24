import 'package:babyami/modals/Confide_txt.dart';
import 'package:babyami/screens/danhsach_Confide.dart';
import 'package:babyami/screens/form_Confide.dart';
import 'package:flutter/material.dart';

class QuanLyConfide extends StatefulWidget {
  @override
  State<QuanLyConfide> createState() => _QuanLyConfideState();
}

class _QuanLyConfideState extends State<QuanLyConfide> {
  final List<Confide> danhSachConfide = [
    Confide(
      ma: 1,
      tieude: "THƯ GỬI CON YÊU DẤU",
      ngaynhap: DateTime(2002, 8, 20),
      noidung: "Con thân mến.....",
    ),
    Confide(
      ma: 2,
      tieude: "THƯ GỬI CON YÊU DẤU",
      ngaynhap: DateTime(2002, 8, 20),
      noidung: "Con thân mến.....",
    ),
    Confide(
      ma: 3,
      tieude: "THƯ GỬI CON YÊU DẤU",
      ngaynhap: DateTime(2002, 8, 20),
      noidung: "Con thân mến.....",
    ),
    Confide(
      ma: 4,
      tieude: "THƯ GỬI CON YÊU DẤU",
      ngaynhap: DateTime(2002, 8, 20),
      noidung: "Con thân mến.....",
    ),
    Confide(
      ma: 5,
      tieude: "THƯ GỬI CON YÊU DẤU",
      ngaynhap: DateTime(2002, 8, 20),
      noidung: "Con thân mến.....",
    ),


  ];

  addConfide(int ma, String Tieude, String Noidung) {
    final newConfide = Confide(
      ma: ma,
      tieude: Tieude,
      ngaynhap: DateTime.now(),
      noidung: Noidung,
    );

    setState(() {
      danhSachConfide.add(newConfide);
    });
  }

  formAddConfide(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (_) {
        return GestureDetector(
          onTap: () {},
          child: FormNhapConfide(addConfide),
          behavior: HitTestBehavior.opaque,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEEDDD4),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              // Khoảng cách trên và dưới là 20.0
              child: Text(
                'Tâm Thư Của Mẹ',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff48477F),
                ),
              ),
            ),
            DanhSachConfide(danhSachConfide),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: EdgeInsets.only(bottom: 80.0),
        child: FloatingActionButton.extended(
          icon: Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Icon(Icons.add),
          ),
          label: Text("Add"),
          onPressed: () => formAddConfide(context),
        ),
      ),
    );
  }
}

