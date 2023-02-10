import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:stock_app/Models/Products.dart';

class Calendar extends StatefulWidget {
  const Calendar({super.key});

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {

  Products my_product = Products();

  @override
  Widget build(BuildContext context) {
    return Scaffold(        
        body: SingleChildScrollView(
          child: ElevatedButton(
            onPressed: (){
              my_product.tableCreate();

            }, 
            child: Text("CREATE DB TABLE"),
            )
          ),
        );
  }
}