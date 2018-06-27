import 'package:flutter/material.dart';
import 'package:flutter_app_list/app/custom_list_tile.dart';

class CustomList extends StatefulWidget{

  CustomList(this.data);
  final List<String> data;

  @override
  createState() => CustomListState(data);
}

class CustomListState extends State<CustomList>{

  CustomListState(this.data);
  final List<String> data;

  Widget _buildItem(String item){
    return new CustomListTile(item);
  }

  Widget _buildList(){
    return new ListView.builder(
      itemCount: data.length ,
      itemBuilder: (context,i){
        return _buildItem(data[i]);
      },
    );
  }

  @override
  Widget build(BuildContext context){
    return new Container(
      child:_buildList()
    );
  }

  void animateIcon(){

  }
}