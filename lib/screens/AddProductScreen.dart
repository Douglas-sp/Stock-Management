import 'dart:developer';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:counter/counter.dart';
import 'package:stock_app/Models/Products.dart';


class AddProduct extends StatefulWidget {
  const AddProduct({super.key});

  @override
  State<AddProduct> createState() => _AddProductState();
}

//List Store_Location = ["Wandegeya","Bwaise","Kawempe","Ndejje","Karakaveni","Ntinda"];

class _AddProductState extends State<AddProduct> {

  Products my_product = Products();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Center(
          child: Text('Add Products', style: TextStyle(),)),
        actions: [
          // IconButton(
          //   onPressed: (() {
              
          //   }),
          //   icon: Icon(Icons.qr_code_scanner)
          // )
           
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
                  alignment: Alignment.topLeft,
                  child: Text('Product Code',
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),
                    textAlign: TextAlign.start,
                  ),
                ),

                SizedBox(height: 10,),

                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Enter code',
                    border: OutlineInputBorder(),
                    onChanged: (x){
                      my_product.product_code = x.toString() as int;
                    }
                  ),
                ),

                SizedBox(height: 15,),

                Container(
                  alignment: Alignment.topLeft,
                  child: Text('Product Name',
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),
                    textAlign: TextAlign.start,
                  ),
                ),

                SizedBox(height: 15,),

                TextFormField(
                  decoration: InputDecoration(
                    labelText: '${my_product.product_name}',
                    border: OutlineInputBorder(),
                    onChanged: (x){
                      my_product.product_name = x.toString();
                    }
                  ),
                ),

                SizedBox(height: 15,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text('Stock',
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),
                            textAlign: TextAlign.start,
                            ),
                          ),
                          SizedBox(height: 20,),
                          Container(
                            height: 25,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              //border: Border.all(
                                //width: 1.0,
                                //color: Colors.,
                              //),
                            ),
                            child: Counter(
                              min: 0, 
                              max: 100,
                              step: 1,
                              initial: 0,
                            ),
                          ),


                        ],
                      ),

                      SizedBox(width: 60),

                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [

                          Container(
                            alignment: Alignment.topLeft,
                            child: Text('Unit',
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),
                            textAlign: TextAlign.start,
                            ),
                          ),
                          SizedBox(height: 20,),
                          
                          // FormBuilderDropdown(
                          //   name: "dropdown_field",
                          //   decoration: InputDecoration(
                          //    labelText: "Dropdown" icon: icon(Icons.category)),
                          //   items: ["kg", "cartons", "bags", "boxes"]
                          //   .map((option) => DropdownMenuItem(
                          //   value: option,
                          //   child: Text("$option"),
                          //   )).toList(),
                          // //validators: [FormBuilderValidators.required()],
                          // )
                            
                        ],
                      )

                  ],
                ),

                SizedBox(height: 15,), 

                Container(
                  alignment: Alignment.topLeft,
                  child: Text('Cost Price',
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),
                    textAlign: TextAlign.start,
                  ),
                ),
                SizedBox(height: 10,),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Enter cost price',
                    border: OutlineInputBorder(),
                    onChanged: (x){
                      my_product.cost_price = x.toString() as int;
                    }
                  ),
                ),

                SizedBox(height: 15,),

                Container(
                  alignment: Alignment.topLeft,
                  child: Text('Sales Price',
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),
                    textAlign: TextAlign.start,
                  ),
                ),
                SizedBox(height: 10,),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Enter sales price',
                    border: OutlineInputBorder(),
                    onChanged: (x){
                      my_product.sale_price = x.toString() as int;
                    }
                  ),
                ),

               SizedBox(height: 15,),

               Container(
                  alignment: Alignment.topLeft,
                  child: Text('Discount',
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),
                    textAlign: TextAlign.start,
                  ),
                ),

                SizedBox(height: 10,),

                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Enter discount price',
                    border: OutlineInputBorder(),
                  ),
                ),

                SizedBox(height: 20,),

                DottedBorder(
                  color: Colors.blue,
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: (() {
                            
                          }), 
                          icon: Icon(Icons.add, color: Colors.blue,)
                        ),
                        Text('Add image', 
                          style:TextStyle(color: Colors.blue, fontWeight: FontWeight.bold) ,
                        )
                      ],
                    ),
                    
                  )
                ),

                SizedBox(height: 20,),

                // DottedBorder(
                //   color: Colors.blue,
                //   child: Container(
                //     width: double.infinity,
                //     height: 50,
                //     child: Row(
                //       mainAxisAlignment: MainAxisAlignment.center,
                //       children: [
                //         IconButton(
                //           onPressed: (() {
                            
                //           }), 
                //           icon: Icon(Icons.qr_code_scanner, color: Colors.blue,)
                //         ),
                //         Text('Generate Barcode', 
                //           style:TextStyle(color: Colors.blue, fontWeight: FontWeight.bold) ,
                //         )
                //       ],
                //     ),
                    
                //   )
                // ),

                SizedBox(height: 20,),

                Container(
                  width: double.infinity,
                  height:50,
                  child: ElevatedButton(
                    onPressed: (){
                      saveProduct();

                    }, 
                    child: Text('Save')),
                )

              ],
            ),


        ),
      ),

    );
  }


  void saveProduct() {

    //Save to db table func here!!!
  }
}