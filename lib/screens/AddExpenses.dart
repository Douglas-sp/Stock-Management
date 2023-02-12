import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:stock_app/models/AppConfig.dart';
import 'package:stock_app/models/StocksModel.dart';
import 'package:stock_app/models/Utils.dart';

class AddExpenses extends StatefulWidget {
  const AddExpenses({super.key});

  @override
  State<AddExpenses> createState() => _AddExpensesState();
}

class _AddExpensesState extends State<AddExpenses> {
  final _formKey = GlobalKey<FormBuilderState>();

  StocksModel myExpenses = StocksModel();

  // List<String> categoryOptions = [
  //   'Salaries and Wages',
  //   'Rent',
  //   'Meals',
  //   'Insurance',
  //   'Interest Payments',
  //   'Loan Repayment',
  //   'Legal and Professional fees'
  //       'Office Expenses',
  //   'Taxes and licenses',
  //   'Transport',
  //   'Utilities',
  //   'Other'
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'Add Expenses',
          style: TextStyle(),
        )),
        actions: [IconButton(onPressed: (() {}), icon: Icon(Icons.list))],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Color.fromARGB(255, 245, 245, 245),
          height: 1000,
          padding: EdgeInsets.all(30),
          child: FormBuilder(
            key: _formKey,
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Expense Category',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                    textAlign: TextAlign.start,
                  ),
                ),

                SizedBox(
                  height: 15,
                ),

                // TextFormField(
                //   decoration: InputDecoration(
                //     labelText: 'Enter code',
                //     border: OutlineInputBorder(),
                //   ),
                // ),
                FormBuilderDropdown(
                  name: 'category',
                  onChanged: (value) {
                    myExpenses.category = value.toString();
                  },
                  decoration: InputDecoration(
                    labelText: 'Select Category',
                    //hintText: 'Select Category',
                    border: OutlineInputBorder(
                        //borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        ),
                  ),
                  items: AppConfig.categoryOptions
                      .map((category) => DropdownMenuItem(
                            alignment: AlignmentDirectional.center,
                            value: category,
                            child: Text(category),
                          ))
                      .toList(),
                ),

                SizedBox(
                  height: 15,
                ),

                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Expense Title',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                    textAlign: TextAlign.start,
                  ),
                ),

                SizedBox(
                  height: 15,
                ),

                FormBuilderTextField(
                  name: 'name',
                  onChanged: (value) {
                    myExpenses.title = value.toString();
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    //labelText: 'Enter ',
                  ),
                ),

                SizedBox(
                  height: 15,
                ),

                Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Date',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16.0),
                            textAlign: TextAlign.start,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 60,
                          width: 120,
                          child: FormBuilderDateTimePicker(
                            name: 'name',
                            onChanged: (value) {
                              //myExpenses.date = value.toString();
                            },
                            //inputFormatters: [],
                            inputType: InputType.date,

                            //format: DateFormat("-dd-MM-yyyy"),
                            //format: DateTime.now() ,
                            enabled: true,
                            decoration: InputDecoration(
                              //icon: Icon(Icons.date_range),
                              border: OutlineInputBorder(),
                              labelText: 'Select Date ',
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Column(
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Expense Amount',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16.0),
                            textAlign: TextAlign.start,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 60,
                          width: 150,
                          child: FormBuilderTextField(
                            name: 'name',
                            // onChanged: (value) {
                            //   myExpenses.amount = value.toString();
                            // },
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              //labelText: 'Enter ',
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),

                SizedBox(
                  height: 30,
                ),

                Container(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () {
                        //myExpenses.tableCreate();
                        saveExpenses();
                      },
                      child: Text('SAVE')),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void saveExpenses() async {
    //print(_formKey.currentState!.fields['Category']?.value.toString());
   
    //return;

    if (myExpenses.title == null || myExpenses.title.isEmpty) {
      Utils.toast('Cant be empty.', color: Colors.red);
      return;
    }

    

    bool resp = await myExpenses.save();

    if (resp) {
      Utils.toast('Saving...');
      Utils.toast('Saved Successfully!');
       _formKey.currentState!.reset();
    } else {
      Utils.toast('Failed to save.');
    }

    // if (myExpenses.amount == null || myExpenses.amount.isEmpty) {
    //   Utils.toast('Cant be empty');
    //   return;
    // }
  }
}
