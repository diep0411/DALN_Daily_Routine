import "package:flutter/material.dart";

class FormNhapConfide extends StatelessWidget {
  final Function addConfide;

  final maController = TextEditingController();
  final TieudeController = TextEditingController();
  final NoidungController = TextEditingController();

  FormNhapConfide(this.addConfide);

  submitData() {
    final enterMaController = maController.text;
    final enterTieuDeController = TieudeController.text;
    final enterNoiDungController = NoidungController.text;

    if ((int.parse(enterMaController) != null) &&
        (enterTieuDeController.length > 3) &&
        (enterNoiDungController.length > 1))
      addConfide(
        int.parse(enterMaController),
        enterTieuDeController,
        enterNoiDungController,
      );
    else
      return;
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

