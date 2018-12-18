import 'package:flutter/material.dart';

class StartPage extends StatefulWidget{
  StartPage({Key key, this.title}) : super(key: key);
  // 声明变量
  final String title;

  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Container(
        child: Text('我是测试'),
      ),
    );
  }
}