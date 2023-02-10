import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:stock_app/models/StocksModel.dart';
import 'package:stock_app/screens/AddExpenses.dart';

import 'DashboardScreen.dart';
import 'MoreScreen.dart';
import 'SaleScreen.dart';
import 'StockScreen.dart';

class Expense extends StatefulWidget {
  const Expense({super.key});

  @override
  State<Expense> createState() => _ExpenseState();
}

class _ExpenseState extends State<Expense> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'Expenses',
          style: TextStyle(),
        )),
        actions: [
          IconButton(
              onPressed: (() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddExpenses(),
                  ),
                );
              }),
              icon: Icon(Icons.add_box))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Color.fromARGB(255, 245, 245, 245),
          height: 1000,
          padding: EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 50,
                width: 500,
                padding: EdgeInsets.all(8),
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                        child: Text(
                      'Total Expenses',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                    Text(
                      'USh0',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 2)]),
              ),

              SizedBox(
                height: 15,
              ),

              ListTile(
                title: Text('Expense History'),
                trailing: IconButton(
                    onPressed: () {
                      getExpenses();
                    },
                    icon: Icon(Icons.history_rounded)),
              ),

              //Container()
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 80,
        child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.blue,
            items: [
              BottomNavigationBarItem(
                  icon: IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => DashBoard())));
                    },
                    icon: Icon(Icons.dashboard_customize_outlined),
                  ),
                  label: 'DashBoard'),
              BottomNavigationBarItem(
                  icon: IconButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: ((context) => Stock())));
                      },
                      icon: Icon(Icons.store)),
                  label: 'Stock'),
              BottomNavigationBarItem(
                  icon: IconButton(
                    onPressed: (() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) => Sale())));
                    }),
                    icon: Icon(Icons.money),
                  ),
                  label: 'Sale'),
              BottomNavigationBarItem(
                  icon: IconButton(
                    onPressed: (() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) => Expense())));
                    }),
                    icon: Icon(Icons.credit_card),
                  ),
                  label: 'Expenses'),
              BottomNavigationBarItem(
                  icon: IconButton(
                    onPressed: (() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) => More())));
                    }),
                    icon: Icon(Icons.more_horiz_outlined),
                  ),
                  label: 'More'),
            ]),
      ),
    );
  }
  List<StocksModel> items = [];
  void getExpenses() async{
    items= await StocksModel.getItems();
    print('MOVIES FROM DB===> ${items.length}<====');
  }
}
