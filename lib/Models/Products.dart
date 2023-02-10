import 'package:sqflite/sqflite.dart';
import 'package:stock_app/Database/CreateTable.dart';
import 'package:stock_app/Models/AppConfig.dart';
import 'package:path/path.dart';
import 'package:stock_app/screens/StockScreen.dart';

class Products {
  // int product_code = 0;
  String product_name = "";
  int stock = 0;
  int cost_price = 0;
  int sale_price = 0;
  double discount = 0;

  tableCreate() async {
    var db = await openDatabase(AppConfig.LOCAL_DB_PATH);

    if (!db.isOpen) {
      print("DATABASE FAILED TO OPEN!!!!!!!!");
      return;
    }
    try {
      await db.execute(
          "CREATE TABLE IF NOT EXISTS ${AppConfig.TABLE_NAME} (product_code INTEGER PRIMARY KEY autoincrement, product_name TEXT, stock INTEGER, cost_price INTEGER, sale_price INTEGER)");
      print("Table created successfully🥳🥳}");
    } catch (e) {
      print("Failed to create table because ${e.toString()}");
    }
  }

  //save product details to database
  saveProduct() async {
    //creating table first
    await tableCreate();
    //ensuring the db is open
    var db = await openDatabase(AppConfig.LOCAL_DB_PATH);
    if (!db.isOpen) {
      return;
    }
    //toJson converts the data to json format
    toJson() {
      return {
          // 'product_code':this.product_code,
        'product_name': this.product_name,
        'stock': this.stock,
        'cost_price': this.cost_price,
        'sale_price': this.sale_price,
        'discount': this.discount,
      };
    }
    //inserting the product data
    try {
      int product_code = await db.insert(AppConfig.TABLE_NAME,toJson());
      print("PRODUCT SAVED SUCCESSFULLY WITH ID ${product_code}");
    } catch (e) {
      print("FAILED TO SAVE PRODUCT because ${e.toString()}");
    }

    
  }
}
