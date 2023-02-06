import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:stock_app/screens/LoginScreen.dart';

import 'DashboardScreen.dart';
import 'Expenses.dart';
import 'SaleScreen.dart';
import 'StockScreen.dart';

class More extends StatefulWidget {
  const More({super.key});

  @override
  State<More> createState() => _MoreState();
}

class _MoreState extends State<More> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Center(
          child: Text('More', style: TextStyle(),)),
        actions: [
          IconButton(
            onPressed: (() {
              
            }),
            icon: Icon(Icons.more_vert_outlined)
          ),

          IconButton(
            onPressed: (() {
              Navigator.push(
                    context, MaterialPageRoute(
                      builder:( 
                      (context) => Login()
                      ) )
                  );
            }),
            icon: Icon(Icons.logout)
          )
           
        ],
      ),

      
      body: SingleChildScrollView(
        child: Container(
          color: Color.fromARGB(255, 245, 245, 245),
          height: 900,
          padding: EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
      
              Container(
                height: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Order History", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.blue)),
                  Icon(Icons.arrow_forward_ios_sharp, color: Colors.blue),
                ],
              ),
              ),
              Container(
                height: 70,
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Detailed Reports" , style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.blue)),
                  Icon(Icons.arrow_forward_ios_sharp, color: Colors.blue),
                ],
                ),
              ),
              Container(
                height: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Help Videos" , style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.blue)),
                  Icon(Icons.arrow_forward_ios_sharp,color: Colors.blue),
                ],
                ),
              ),
              Container(
                height: 70,
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Help Us" , style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.blue)),
                  Icon(Icons.arrow_forward_ios_sharp,color: Colors.blue),
                ],
                ),
              ),
              Container(
                height: 70,
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Invite Friends" , style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.blue)),
                  Icon(Icons.arrow_forward_ios_sharp,color: Colors.blue),
                ],
                ),
              ),
              Container(
                height: 70,
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Delete Account" , style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.blue)
                  ),
                  Icon(Icons.arrow_forward_ios_sharp,color: Colors.blue),
                ],
                ),
              ),

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
                onPressed: (){
                  Navigator.push(
                    context, MaterialPageRoute(
                      builder:( 
                      (context) => DashBoard()
                      ) )
                  );
                }, 
              icon: Icon(Icons.dashboard_customize_outlined),
              ),
              label: 'DashBoard'
            ),

            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: (){
                  Navigator.push(
                    context, MaterialPageRoute(
                      builder:( 
                      (context) => Stock()
                      ) )
                  );
                }, 
                icon: Icon(Icons.store)
              ),
              label: 'Stock'
            ),

            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: (() {
                  Navigator.push(
                    context, MaterialPageRoute(
                      builder:( 
                      (context) => Sale()
                      ) )
                  );
                }), 
                icon: Icon(Icons.money),
                ),
              label: 'Sale'
            ),

            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: (() {
                  Navigator.push(
                    context, MaterialPageRoute(
                      builder:( 
                      (context) => Expense()
                      ) )
                  );
                }), 
                icon: Icon(Icons.credit_card),
                ),
              label: 'Expenses'
            ),

            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: (() {
                  Navigator.push(
                    context, MaterialPageRoute(
                      builder:( 
                      (context) => More()
                      ) )
                  );
                }), 
              icon: Icon(Icons.more_horiz_outlined),
              ),
              label: 'More'
            ),
          ]
          ),
      ),

    );
  }
}