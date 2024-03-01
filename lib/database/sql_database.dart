import "package:flutter/foundation.dart";
import "package:sqflite/sqflite.dart" as sql;

class SQLDatabase {
  static Future<sql.Database> createDatabase() async {
    return sql.openDatabase(
      'mydata.db',
      version: 1,
      onCreate: (sql.Database database, int version) async {
        await createTable(database);
      },
    );
  }

  static Future<void> createTable(sql.Database database) async {
    await database.execute("""CREATE TABLE items (
      id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
      title TEXT,
      description TEXT,
      createAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
    )
    """);
  }

  static Future<int> createItem(String title, String? description) async {
    final db = await SQLDatabase.createDatabase();
    final data = {
      'title' : title,
      'description' : description,
    };
    final id = await db.insert('items', data, conflictAlgorithm: sql.ConflictAlgorithm.replace);

    return id;
  }

  static Future<List<Map<String, dynamic>>> getItems() async {
    final db = await SQLDatabase.createDatabase();
    return await db.query('items', orderBy: "id");
  }

  static Future<List<Map<String, dynamic>>> getItem(int id) async {
    final db = await SQLDatabase.createDatabase();
    return await db.query('items', where: "id = ?", whereArgs: [id], limit: 1);
  }

  static Future<int> updateItem(int id, String title, String? description) async {
    final db = await SQLDatabase.createDatabase();
    final data = {
      'title' : title,
      'description' : description,
      'createAt': DateTime.now().toString(),
    };
    final result = await db.update('items', data, where: "id = ?", whereArgs: [id]);

    return result;
  }

  static Future<void> deleteItem(int id) async {
    final db = await SQLDatabase.createDatabase();

    try {
      await db.delete('items', where: "id = ?", whereArgs: [id]);
    } catch (err) {
      debugPrint("Co loi khi xoa item: $err");
    }
  }
}