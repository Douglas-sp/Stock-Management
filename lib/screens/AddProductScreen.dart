import 'dart:developer';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:counter/counter.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({super.key});

  @override
  State<AddProduct> createState() => _AddProductState();
}

//List Store_Location = ["Wandegeya","Bwaise","Kawempe","Ndejje","Karakaveni","Ntinda"];

class _AddProductState extends State<AddProduct> {
  List<String> categoryOptions = ['Bags', 'Bottles','Boxes',
  'Cans','Cases','Cartons','Cups','Jars','Kilograms(Kg)',
  'Pounds(lbs)','Litres','Meters','Pieces','Tons'
  'Dozens','Each','Gallons','Grams','Other'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Center(
          child: Text('Add Products', style: TextStyle(),)),
        actions: [
          IconButton(
            onPressed: (() {
              
            }),
            icon: Icon(Icons.qr_code_scanner)
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
                    labelText: 'Enter name of product',
                    border: OutlineInputBorder(),
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
                          SizedBox(height: 35,),
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

                          Container(
                            height: 50,
                            width: 160,
                            child: FormBuilderDropdown(
                              name: 'category',
                              decoration: InputDecoration(
                              labelText: 'Select Weight',
                              //hintText: 'Select Category',
                              border: OutlineInputBorder(
                              //borderRadius: BorderRadius.all(Radius.circular(12.0)),
                              ),
                             ),
                              items: categoryOptions
                              .map((category) => DropdownMenuItem(
                                alignment: AlignmentDirectional.center,
                                value: category,
                                child: Text(category),
                            ))
                            .toList(),
                            ),
                          ),
                          
                          // FormBuilderDropdown(
                          //   name: "dropdown_field",
                          //   decoration: InputDecoration(labelText: "Dropdown"),
                          //   items: ["Option 1", "Option 2", "Option 3"]
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
                          icon: Icon(Icons.qr_code_scanner, color: Colors.blue,)
                        ),
                        Text('Generate Barcode', 
                          style:TextStyle(color: Colors.blue, fontWeight: FontWeight.bold) ,
                        )
                      ],
                    ),
                    
                  )
                ),

                SizedBox(height: 20,),

                Container(
                  width: double.infinity,
                  height:50,
                  child: ElevatedButton(
                    onPressed: (){

                    }, 
                    child: Text('Save')),
                )

              ],
            ),


        ),
      ),

    );
  }
}