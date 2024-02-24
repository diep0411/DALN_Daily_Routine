import 'package:babyami/modals/Confide_txt.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'edit_Confide_screen.dart';

class DanhSachConfide extends StatefulWidget {
  final List<Confide> danhSachConfide;

  DanhSachConfide(this.danhSachConfide);

  @override
  _DanhSachConfideState createState() => _DanhSachConfideState();
}

class _DanhSachConfideState extends State<DanhSachConfide> {
  void _showDeleteConfirmationDialog(BuildContext context, Confide nv) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Confirm Delete"),
          content: Text("Bạn Muốn Xóa ${nv.tieude}?"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Cancel"),
            ),
            TextButton(
              onPressed: () {
                // Remove the NhanVien from the list
                widget.danhSachConfide.remove(nv);
                Navigator.of(context).pop(); // Close the dialog
                setState(() {});
                _showSuccessSnackbar();// Rebuild the widget tree
              },
              child: Text("Delete"),
            ),
          ],
        );
      },
    );
  }

  void _editConfide(BuildContext context, Confide nv) {
    // Chuyển sang màn hình chỉnh sửa và đợi kết quả trả về
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => EditConfideScreen(nv),
      ),
    ).then((editedConfide) {
      if (editedConfide != null) {
        // Nếu có thông tin nhân viên chỉnh sửa, cập nhật lại danh sác
        int index = widget.danhSachConfide.indexOf(nv);
        setState(() {
          widget.danhSachConfide[index] = editedConfide;
        });
      }
    });
  }

  void _showSuccessSnackbar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: Duration(seconds: 2),
        content: Row(
          children: [
            Icon(
              Icons.check_circle,
              color: Color(0xffEDC8B3),
            ),
            SizedBox(width: 8),
            Text('Xóa thành công!', style: TextStyle(color: Color(0xffEDC8B3))),
          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: widget.danhSachConfide.map((nv) {
            return Card(
              child: GestureDetector(
                onTap: (){
                },
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 15,
                      ),
                      padding: EdgeInsets.all(10),
                      child: Image.asset(
                        'assets/icons/thinking.png', // Replace with the actual path to your image
                        width: 50, // Adjust the width as needed
                        height: 50, // Adjust the height as needed
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          nv.ma.toString() + ' - ' + nv.tieude,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          DateFormat('dd-MM-yyyy').format(nv.ngaynhap) +
                              ' - ' +
                              nv.noidung,
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                    Spacer(),
                    SizedBox(width:2),
                    IconButton(
                      icon: Icon(Icons.account_balance_wallet, color: Color(0xffEDC8B3)),
                      onPressed: () {
                        _editConfide(context, nv);
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.delete, color: Color(0xffEDC8B3)),
                      onPressed: () {
                        _showDeleteConfirmationDialog(context, nv);
                      },
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}