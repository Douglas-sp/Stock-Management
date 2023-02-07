import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:stock_app/screens/DashboardScreen.dart';
import 'package:stock_app/screens/LoginScreen.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(top: 80),
        padding: EdgeInsets.only(left: 30, right: 30),
        child: Column(children: [
          //---header begin--

          Container(
            width: 100.0,
            height: 100.0,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
            child: Center(
              child: Text(
                'SPZ',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
            ),
          ),

          SizedBox(
            height: 40,
          ),

          Container(
            alignment: Alignment.topLeft,
            child: Text(
              'Sign Up',
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
            ),
          ),

          SizedBox(
            height: 30.0,
          ),

          FormBuilder(
            key: _formKey,
            child: Column(
              children: [
                FormBuilderTextField(
                  //key: _nameFieldKey,
                  name: 'Full Name',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Text Field cannot be empty";
                    }
                  },
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        //borderSide: BorderSide(color: Colors.blue),
                        borderRadius: BorderRadius.all(Radius.circular(12.0))),
                    label: Text('Name'),
                    //hintText: "",
                  ),
                  //validator: FormBuilderValidators.compose(value) {

                  //},
                ),
                SizedBox(
                  height: 30.0,
                ),
                FormBuilderTextField(
                    name: 'Email',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Email cannot be empty";
                      }
                      if (!RegExp(
                              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(value)) {
                        return "Invalid email address";
                      }
                    },
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                          borderRadius:
                              BorderRadius.all(Radius.circular(12.0))),
                      label: Text('Email'),
                      hintText: "name@example.com",
                    )),
                SizedBox(
                  height: 30.0,
                ),
                FormBuilderTextField(
                    name: 'password',
                    //validator: FormBuilderValidators.required(),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Password can not be empty";
                      }
                      if (value.length < 8) {
                        return "Password must be atleast 8 characters";
                      }
                    },
                    obscureText: true,
                    textInputAction: TextInputAction.done,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.0))),
                        labelText: 'Password',
                        hintText: "min. 8 characters",
                        suffixIcon: Icon(Icons.visibility))),
                SizedBox(
                  height: 27.0,
                ),
                Container(
                  width: 500,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState?.validate() == true) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Login(),
                          ),
                        );
                      }
                    },
                    child: Text('Sign Up'),
                    //style: ElevatedButton.styleFrom(),
                  ),
                ),
                SizedBox(
                  height: 120.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Have an account already?',
                      style: TextStyle(fontSize: 15.0),
                    ),
                    InkWell(
                      onTap: (() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Login(),
                          ),
                        );
                      }),
                      child: Text(
                        'Log In',
                        style: TextStyle(
                            color: Color.fromARGB(255, 8, 132, 234),
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ]),
      ),
    ));
  }
}
