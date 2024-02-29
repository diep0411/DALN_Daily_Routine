import "package:flutter/material.dart";

class FormNhapConfide extends StatefulWidget {
  final Function addConfide;

  FormNhapConfide(this.addConfide);

  @override
  _FormNhapConfideState createState() => _FormNhapConfideState();
}

class _FormNhapConfideState extends State<FormNhapConfide> {
  final maController = TextEditingController();
  final TieudeController = TextEditingController();
  final NoidungController = TextEditingController();

  submitData() {
    final enterMaController = maController.text;
    final enterTieuDeController = TieudeController.text;
    final enterNoiDungController = NoidungController.text;

    if ((int.tryParse(enterMaController) != null) &&
        (enterTieuDeController.length > 3) &&
        (enterNoiDungController.length > 1)) {
      widget.addConfide(
        int.parse(enterMaController),
        enterTieuDeController,
        enterNoiDungController,
      );
      // Clear text fields after submitting
      maController.clear();
      TieudeController.clear();
      NoidungController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Mã Tâm Thư'),
              controller: maController,
              onSubmitted: (_) => submitData(),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Tiêu đề'),
              controller: TieudeController,
              onSubmitted: (_) => submitData(),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Nội dung'),
              controller: NoidungController,
              onSubmitted: (_) => submitData(),
            ),
            TextButton(
              child: Text('LƯU'),
              onPressed: (){
                submitData();
              },
            )
          ],
        ),
      ),
    );
  }
}

