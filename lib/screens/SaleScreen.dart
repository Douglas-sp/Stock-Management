import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'DashboardScreen.dart';
import 'Expenses.dart';
import 'MoreScreen.dart';
import 'StockScreen.dart';

class Sale extends StatefulWidget {
  const Sale({super.key});

  @override
  State<Sale> createState() => _SaleState();
}

class _SaleState extends State<Sale> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Center(
          //center
          child: Text('Sale', style: TextStyle(),)),
        actions: [
          IconButton(
            onPressed: (() {
              
            }),
            icon: Icon(Icons.qr_code_scanner_outlined)
          )
           
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
                    child: Text('Add by barcode ID / Product name', 
                    style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500,  ),)
                  ),

                  IconButton(
                    onPressed:(() {
                      
                    }), 
                    icon: Icon(Icons.search, color: Colors.grey,)
                  )

                ],
               ),
               decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.circular(12),
                 boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius:2
                        )
                 ]
               ),
             ) 

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