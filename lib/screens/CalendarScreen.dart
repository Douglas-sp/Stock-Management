import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Calendar extends StatefulWidget {
  const Calendar({super.key});

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
          appBar: AppBar(
          title: Center(
            child: Text('Dashboard', style: TextStyle(),)),
          actions: [
            IconButton(
              onPressed: (() {
                Navigator.push(
                      context, MaterialPageRoute(
                        builder:( 
                        (context) => Calendar()
                        ) )
                    );
              }),
              icon: Icon(Icons.calendar_month_sharp))
          ],
        ),

        
        body: SingleChildScrollView(
          
          child:Container(

            
              child: Container(
                constraints: BoxConstraints(
                  minHeight: 0,
                  maxHeight: double.infinity,
                ),
                color: Color.fromARGB(255, 245, 245, 245),
                //color: Colors.grey.withOpacity(0.9),
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
                              Text('USh0',style: TextStyle(fontWeight:FontWeight.bold, fontSize: 18),),
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
                  
                    SizedBox(width: 40 ,),
                  
                        Container(
                          width: 150,
                          height: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:[
                              Text('USh0', style: TextStyle(fontWeight:FontWeight.bold, fontSize: 18),),
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
                      ],
                    ),
            
                    SizedBox(height: 40,),
            
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text('Total Sales', 
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),))
            
                  ],
                ),
              ),
            ),
          ),
        );
  
  }
}