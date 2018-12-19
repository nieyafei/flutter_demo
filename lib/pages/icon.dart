import 'package:flutter/material.dart';

class IconPage extends StatefulWidget{
  IconPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _IconPageState createState() => _IconPageState();
}

class _IconPageState extends State<IconPage>{

  @override
  Widget build(BuildContext context){
    return new Container(
      color: Colors.white,
      child: new Text('Icon主页'),
    );
  }
}