import 'package:flutter/material.dart';
import 'package:flutter_app_list/app/home.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: new MyDashboard(title: 'Flutter Demo Home Page'),
    );
  }
}