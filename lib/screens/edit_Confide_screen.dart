import 'package:babyami/modals/Confide_txt.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class EditConfideScreen extends StatefulWidget {
  final Confide confide;
  EditConfideScreen(this.confide);

  @override
  _EditConfideScreenState createState() => _EditConfideScreenState();
}

class _EditConfideScreenState extends State<EditConfideScreen> {
  TextEditingController _TieudeController = TextEditingController();
  TextEditingController _NoidungController = TextEditingController();
  DateTime _ngayNhap = DateTime.now();

  @override
  void initState() {
    super.initState();
    _TieudeController.text = widget.confide.tieude ?? '';
    _NoidungController.text = widget.confide.noidung ?? '';
    _ngayNhap = widget.confide.ngaynhap ?? DateTime.now();
  }

  void _showSuccessSnackbar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: Duration(seconds: 2),
        content: Row(
          children: [
            Icon(
              Icons.check_circle,
              color: Colors.green,
            ),
            SizedBox(width: 8),
            Text('Chỉnh sửa thành công!', style: TextStyle(color: Colors.green)),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('TÂM THƯ CỦA MẸ'),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back),
        ),
        backgroundColor: Color(0xffEDC8B3),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                child: Image.asset(
                  'assets/icons/thinking.png', // Replace with the actual path to your image
                  width: 350, // Adjust the width as needed
                  height: 350, // Adjust the height as needed
                ),
              ),
              SizedBox(height: 8.0),  // Add some spacing
              TextFormField(
                controller: _TieudeController,
                decoration: InputDecoration(labelText: 'Tiêu đề'),
              ),
              TextFormField(
                controller: _NoidungController,
                decoration: InputDecoration(labelText: 'Nội dung'),
              ),
              ListTile(
                title: Text('Ngày Viết'),
                subtitle: Text(DateFormat('dd-MM-yyyy').format(_ngayNhap)),
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: _ngayNhap,
                    firstDate: DateTime(1900),
                    lastDate: DateTime.now(),
                  );
                  if (pickedDate != null && pickedDate != _ngayNhap) {
                    setState(() {
                      _ngayNhap = pickedDate;
                    });
                  }
                },
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  // Lưu thông tin chỉnh sửa và trả về kết quả
                  Confide editedConfide = Confide(
                    ma: widget.confide.ma,
                    tieude: _TieudeController.text,
                    ngaynhap: _ngayNhap,
                    noidung: _NoidungController.text,
                  );
                  Navigator.pop(context, editedConfide);
                  _showSuccessSnackbar();
                },
                child: Text('Lưu Thay Đổi'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
