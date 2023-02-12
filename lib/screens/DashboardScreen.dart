import 'package:draw_graph/models/feature.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
//import 'package:stock_app/screens/CalendarScreen.dart';
import 'package:stock_app/screens/Expenses.dart';
import 'package:stock_app/screens/MoreScreen.dart';
import 'package:stock_app/screens/SaleScreen.dart';
import 'package:stock_app/screens/StockScreen.dart';
import 'package:draw_graph/draw_graph.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
        final List<Feature> features = [
    Feature(
      title: "Mon",
      color: Colors.blue,
      data: [0.2, 0.8, 0.4, 0.7, 0.6],
    ),
    Feature(
      title: "Tue",
      color: Colors.red,
      data: [1, 0.8, 0.6, 0.7, 0.3],
    ),
    Feature(
      title: "Wed",
      color: Colors.cyan,
      data: [0.5, 0.4, 0.85, 0.4, 7],
    ),
    Feature(
      title: "Thur",
      color: Colors.green,
      data: [0.6, 0.2, 0, 0.1, 1],
    ),
    Feature(
      title: "Fri",
      color: Colors.amber,
      data: [0.25, 1, 0.3, 0.8, 0.6],
    ),
    Feature(
      title: "Sat",
      color: Colors.purple,
      data: [0.25, 1, 0.3, 0.8, 0.6],
    ),
    Feature(
      title: "Sun",
      color: Colors.deepOrangeAccent,
      data: [0.25, 1, 0.3, 0.8, 0.6],
    ),
  ];

    
    var _selectedIndex=0;
    return Scaffold(
      appBar: AppBar(
        //leading: null,
        automaticallyImplyLeading: false,
        title: Center(
          child: Text('Dashboard', style: TextStyle(),)),
        actions: [
          IconButton(
            onPressed: (() {
              // Navigator.push(
              //       context, MaterialPageRoute(
              //         builder:( 
              //         (context) => Calendar()
              //         ) )
              //     );
            }),
            icon: Icon(Icons.calendar_month_sharp))
        ],
      ),

      
      body: SingleChildScrollView(
        child: Container(
          constraints: BoxConstraints(
            minHeight: 0,
            maxHeight: double.infinity,
          ),
          color: Color.fromARGB(255, 245, 245, 245),
          height: 1000,
          
          padding: EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
      
              Row(
                children: [
                  Container(
                    width: 150,
                    height: 100,
                    
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:[
                        Text('UGX 0',style: TextStyle(fontWeight:FontWeight.bold, fontSize: 18),),
                        SizedBox(height: 20,),
                        Text('Total Expenses'),
                      ]
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 8
                        )
                      ]
                    )
                  ),
      
              SizedBox(width: 20 ,),
      
                  Container(
                    width: 150,
                    height: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:[
                        Text('UGX 0', style: TextStyle(fontWeight:FontWeight.bold, fontSize: 18),),
                        SizedBox(height: 20,),
                        Text('Sales')
                      ]
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 8
                        )
                      ]
                    )
                  ),
                  SizedBox(width: 20,),

                  Container(
                    width: 150,
                    height: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:[
                        Text('UGX 0', style: TextStyle(fontWeight:FontWeight.bold, fontSize: 18),),
                        SizedBox(height: 20,),
                        Text('Profits')
                      ]
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 8
                        )
                      ]
                    )
                  ),
                ],
              ),

              SizedBox(height: 20,),

              Container(
                alignment: Alignment.topLeft,
                child: Text('Total Sales', 
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)
              ),

              LineGraph(
          features: features,
          size: Size(800, 500),
          labelX: ['Mon', 'Tue', 'Wed', 'Thur', 'Fri','Sat', 'Sun'],
          labelY: ['20%', '40%', '60%', '80%', '100%'],
          showDescription: true,
          graphColor: Colors.white30,
          graphOpacity: 0.2,
          
          //verticalFeatureDirection: true,
          //descriptionHeight: 130,
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
          currentIndex: _selectedIndex,
            onTap: (int index) {
            setState(() {
            _selectedIndex = index;
            });
            },
          items: [
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: (){
                  
                  
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