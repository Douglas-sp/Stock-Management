
import 'package:sqflite/sqflite.dart';
import 'package:stock_app/Database/CreateTable.dart';
import 'package:stock_app/Models/AppConfig.dart';
import 'package:path/path.dart';

class Products {
  int product_code = 0;
  String product_name = "";
  int stock = 0;
  int cost_price = 0;
  int sale_price = 0;
  // double discount = 0;

  tableCreate() async {
    var db = await openDatabase(AppConfig.LOCAL_DB_PATH);

    if (!db.isOpen) {
      print("DATABASE FAILED TO OPEN!!!!!!!!");
      return;
    }
    try {
      await db.execute(
          "CREATE TABLE ${AppConfig.TABLE_NAME} (id INTEGER PRIMARY KEY autoincrement, product_name TEXT, stock INTEGER, cost_price INTEGER, sale_price INTEGER)");
          print("Table created sucessfully🥳🥳}");

    } catch (e) {
      print("Failed to create table because ${e.toString()}");
      }
  }
}
