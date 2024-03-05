import "package:babyami/database/sql_database.dart";
import "package:flutter/material.dart";

class ConfidePage extends StatefulWidget {
  const ConfidePage({super.key});

  @override
  State<ConfidePage> createState() => _ConfidePagePageState();
}

class _ConfidePagePageState extends State<ConfidePage> {

  List<Map<String, dynamic>> _listData = [];

  final TextEditingController _titleControler = TextEditingController();
  final TextEditingController _descriptionControler = TextEditingController();

  @override
  void initState() {
    super.initState();
    _showListData();
  }

  Future<void> _showListData() async {
    final data = await SQLDatabase.getItems();
    setState(() {
      _listData = data;
    });
  }

  Future<void> _addItem() async {
    await SQLDatabase.createItem(_titleControler.text, _descriptionControler.text);
    _showListData();
  }

  Future<void> _updateItem(int id) async {
    await SQLDatabase.updateItem(id, _titleControler.text, _descriptionControler.text);
    _showListData();
  }

  Future<void> _deleteItem(int id) async {
    await SQLDatabase.deleteItem(id);

    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text("Da xoa ban ghi thanh cong"),
    ));

    _showListData();
  }

  void _showForm(int? id) {
    if (id != null) {
      final existingData = _listData.firstWhere((element) => element['id'] == id);
      _titleControler.text = existingData['title'];
      _descriptionControler.text = existingData['description'];
    }

    showModalBottomSheet(
      context: context,
      elevation: 5,
      isScrollControlled: true,
      builder: (_) => Container(
        padding: EdgeInsets.only(
          top: 15,
          left: 15,
          right: 15,
          bottom: MediaQuery.of(context).viewInsets.bottom + 120,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              controller: _titleControler,
              decoration: const InputDecoration(hintText: "Tiêu Đề"),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: _descriptionControler,
              decoration: const InputDecoration(hintText: "Nhập nội dung..."),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                if (id == null) _addItem();
                else _updateItem(id);

                _titleControler.text = "";
                _descriptionControler.text = "";

                Navigator.of(context).pop();
              },
              child: Text(id == null ? "Thêm Item" : "Sửa Item"),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      //   title: const Text("My SQLite"),
      // ),
      backgroundColor: Color(0xffEEDDD4),
      body: ListView.builder(
        itemCount: _listData.length,
        itemBuilder: (context, index) => Card(
          color: Colors.orange[200],
          margin: const EdgeInsets.all(15),
          child: ListTile(
            title: Text(_listData[index]['title']),
            subtitle: Text(_listData[index]['description']),
            trailing: SizedBox(
              width: 100,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () => _showForm(_listData[index]['id']),
                    icon: const Icon(Icons.edit),
                  ),
                  IconButton(
                    onPressed: () => _deleteItem(_listData[index]['id']),
                    icon: const Icon(Icons.delete),
                  ),
                ],
              ),
            ),
          ),
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
          label: Text("Thêm"),
          onPressed: () => _showForm(null),
        ),
      ),
    );
  }
}
