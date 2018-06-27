import 'package:flutter/material.dart';
import 'dart:math';

class CustomListTile extends StatefulWidget{
  CustomListTile(this.itemData);

  final String itemData;

  @override
  createState() => CustomListTileState(itemData);
}

class CustomListTileState extends State<CustomListTile> with TickerProviderStateMixin{
  CustomListTileState(this.itemData);

  final GlobalKey iconKey = new GlobalKey();
  final String itemData;

  double iconRotation = 0.0;
  Animation animation;

  @override
  Widget build(BuildContext context){
    return new Container(
        color:Colors.white70,
        child: new ListTile(
            subtitle:new Text("Click Me"),
            leading:new Transform(
              alignment: FractionalOffset.center,
              transform:new Matrix4.rotationZ(iconRotation*pi/180),
              child: new Container(
                height:90.0,
                alignment: Alignment.center,
                key: iconKey,
                child:new Icon(Icons.rotate_right,color:Colors.teal,size:40.0,),
              ),
            ),
            title:new Text(itemData,
              style:new TextStyle(
                fontSize: 32.0,
                color: Colors.teal,
              )),
            onTap:(){
              animateIcon();
            }
        )
    );
  }

  void animateIcon(){
    var controller = AnimationController(
        duration:new Duration(milliseconds: 1000),
        vsync:this
    );
    animation = new Tween(begin:0.0,end:1.0)
      .animate(controller)
      ..addListener((){
        setState((){
          this.iconRotation = animation.value*360;
        });
      });
    controller.forward();
  }
}