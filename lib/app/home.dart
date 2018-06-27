import 'package:flutter/material.dart';
import 'package:flutter_app_list/app/CustomList.dart';
import 'package:flutter_app_list/services/items.service.dart';

class MyDashboard extends StatefulWidget {
  MyDashboard({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyDashboardState createState() => new _MyDashboardState();
}

class _MyDashboardState extends State<MyDashboard> {

  List listData = [];

  @override
  void initState() {
    super.initState();
    listData = getItemsFromAPI();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new CustomList(listData),
    );
  }
}