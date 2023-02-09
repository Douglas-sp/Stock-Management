import 'package:flutter/material.dart';
import 'package:stock_app/screens/DashboardScreen.dart';
import 'package:stock_app/screens/LoginScreen.dart';

void main() {
  runApp(My_App());
}

class My_App extends StatefulWidget {
  const My_App({super.key});

  @override
  State<My_App> createState() => _My_AppState();
}

class _My_AppState extends State<My_App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: DashBoard(),
    );
  }
}