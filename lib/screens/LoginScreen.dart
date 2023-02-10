import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:stock_app/screens/DashboardScreen.dart';
import 'package:stock_app/screens/SignUpScreen.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormBuilderState>();
  String _email='', _password='';
  //String passwordField;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
        margin: EdgeInsets.only(top: 100),
        padding: EdgeInsets.only(left: 30, right: 30),
        child: Column(
          children: [
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
                "Login",
                style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0),
              ),
            ),

            SizedBox(
              height: 30.0,
            ),

            Container(
              //padding: EdgeInsets.all(30),
              child: Column(
                children: [
                  FormBuilderTextField(
                    name: "user_name",
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Text Field cannot be empty";
                      }
                      onSaved:(value) => _email = value;
                    },
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      ),
                      labelText: "User Name",
                      suffixIcon: Icon(Icons.person, color: Colors.blue[700]),
                      // hintText: "draymond",
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  FormBuilderTextField(
                      name: 'password',
                      obscureText: true,
                      validator: (value) {
                      // if (value !=
                      //     _formKey?.currentState?.fields["password"]
                      //         ?.currentState?.value) {
                      //   return "Passwords don't match";
                      // }
                      //},

                        if (value == null || value.isEmpty) {
                          return "Password can not be empty";
                        }
                        if (value.length < 8) {
                          return "Password must be atleast 8 characters";
                        }
                      },
                      onSaved: (value) => _password = value as String,
                      //if (value != _formKey.currentState.fields["password"].currentState.value) {
                      // return "Passwords don't match";

                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12.0))),
                          label: Text('Password'),
                          suffixIcon: Icon(
                            Icons.visibility,
                            color: Colors.blue[700],
                          ))),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    width: 500,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                          //if (_formKey.currentState?.validate() == true) {
                          // _formKey.currentState?.save();
                           Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DashBoard(),
                          ),
                        );
                          //print("Email: $_email, Password: $_password");
                    // Perform login process
                  },
                        //if (_formKey.currentState?.validate() == true) {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => DashBoard(),
                        //   ),
                        // );
                     // },
                      //},
                      child: Text(
                        "LOGIN",
                      ),
                      //style: ElevatedButton.styleFrom(),
                    ),
                  ),
                  SizedBox(
                    height: 27.0,
                  ),
                  InkWell(
                    onTap: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //       builder: (context) => ForgotPassword(),
                      //     ),
                      //   );
                    },
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                          color: Color.fromARGB(255, 8, 132, 234),
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0),
                    ),
                  ),
                  SizedBox(
                    height: 180.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Dont have an account?',
                        style: TextStyle(fontSize: 15.0),
                      ),
                      InkWell(
                        onTap: (() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUp(),
                            ),
                          );
                        }),
                        child: Text(
                          'Sign Up',
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

            //Padding(
            //padding: const EdgeInsets.all(15.0),

            // ),
          ],
        ),
      )),
    );
  }
}
