import 'package:sqflite/sqflite.dart';
import 'package:stock_app/models/AppConfig.dart';

class StocksModel {
  static const String TABLE_NAME = 'expenses';
  int id = 0;
  String category = '';
  String title = '';
  //DateTime selectedDate = DateTime.now();
  String date =
      '${DateTime.now().year}-${DateTime.now().month}-${DateTime.now().day}';
  int amount = 0;

  tableCreate() async {
    var db = await openDatabase(AppConfig.LOCAL_DB_PATH);

    try {
      await db.execute(
          'CREATE TABLE IF NOT EXISTS ${StocksModel.TABLE_NAME} (id INTEGER PRIMARY KEY autoincrement, category TEXT, title TEXT,date DATE amount INTEGER )');
      print("TABLE CREATED SUCCESSFULLY!");
    } catch (e) {
      print("failed to created table because ${e.toString()}");
    }
  }

  Future<bool> save() async {
    bool success = false;
    await tableCreate();
    var db = await openDatabase(AppConfig.LOCAL_DB_PATH);

    if (!db.isOpen) {
      return success;
    } else {
      try {
        await db.insert(TABLE_NAME, {
          'category': this.category,
          'title': this.title,
          'date': this.date,
          'amount': this.amount
        });
        print('Expenses saved');
        success = true;
      } catch (e) {
        success = false;
        print('Failed to save expenses because ${e.toString()}');
      }

      return success;
    }
  }

  static Future<List<StocksModel>> getItems() async {
    List<StocksModel> items = [];

    //await tableCreate();
    var db = await openDatabase(AppConfig.LOCAL_DB_PATH);

    List<Map> maps = await db.query(TABLE_NAME);

    for (var element in maps) {
      StocksModel s = StocksModel();

      s.id = int.parse(element['id'].toString());
      s.category = element['category'].toString();
      s.title = element['title'].toString();
      s.date = element['date'].toString();
      s.amount = int.parse(element['amount'].toString());

      items.add(s);
      //print(element);
    }

    //print(maps.length);

    return items;
  }
}
