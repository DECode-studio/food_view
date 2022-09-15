import 'dart:core';

import 'package:sqflite/sqflite.dart' as sql;

class FavoriteDao {
  static Future<void> creatTables(sql.Database db) async {
    await db.execute("""CREATE TABLE favorites(
        id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        mealId TEXT,
        mealImage TEXT,
        mealName TEXT,
        mealCategory TEXT,
        mealTag TEXT,
        mealInstruction TEXT,
      )
      """);
  }

  static Future<sql.Database> db() async {
    return sql.openDatabase(
      'favorite.db',
      version: 1,
      onCreate: (sql.Database db, int version) async {
        await creatTables(db);
      },
    );
  }

  static Future<int> createItem(
    String mealId,
    String mealImage,
    String mealName,
    String mealCategory,
    String mealTag,
    String mealInstruction,
  ) async {
    final db = await FavoriteDao.db();

    final data = {
      'mealId': mealId,
      'mealImage': mealImage,
      'mealName': mealName,
      'mealCategory': mealCategory,
      'mealTag': mealTag,
      'mealInstruction': mealInstruction,
    };

    final id = await db.insert('favorites', data,
        conflictAlgorithm: sql.ConflictAlgorithm.replace);

    return id;
  }

  static Future<List<Map<String, dynamic>>> getItems() async {
    final db = await FavoriteDao.db();
    return db.query('favorites', orderBy: "id");
  }

  static Future<List<Map<String, dynamic>>> getItem(int id) async {
    final db = await FavoriteDao.db();
    return db.query('favorites', where: "id = ?", whereArgs: [id], limit: 1);
  }

  static Future<int> updateItem(
    int id,
    String mealId,
    String mealImage,
    String mealName,
    String mealCategory,
    String mealTag,
    String mealInstruction,
  ) async {
    final db = await FavoriteDao.db();

    final data = {
      'mealId': mealId,
      'mealImage': mealImage,
      'mealName': mealName,
      'mealCategory': mealCategory,
      'mealTag': mealTag,
      'mealInstruction': mealInstruction,
    };

    final result =
        await db.update('favorites', data, where: "id = ?", whereArgs: [id]);
    return result;
  }

  // Delete
  static Future<void> deleteItem(int id) async {
    final db = await FavoriteDao.db();
    try {
      await db.delete("favorites", where: "id = ?", whereArgs: [id]);
    } catch (err) {
      print("Something went wrong when deleting an item: $err");
    }
  }
}
