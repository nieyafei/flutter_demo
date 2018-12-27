import 'dart:math';
import 'package:flutter/material.dart';

class ThemePage extends StatefulWidget{
  ThemePage({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _ThemePageState createState() => _ThemePageState();
}

class _ThemePageState extends State<ThemePage>{
  int _themeColor = 0xff4a86e8;
  var _list = [0xffff9900, 0xff4a86e8, 0xFF7F00FF,0xFFD9D9F3,0xFF236B8E,0xFF99CC32,0xFFFFFF00,0xFFD9D919,0xFF8C7853,0xFF42426F];
  void _changeColor(){
    setState(() {
      int index = Random().nextInt(_list.length);
      _themeColor = _list[index];
    });
  }

  // 遍历组件
  Widget ListWidget() {
    List<Widget> _items = [];
    _list.forEach((res){
      _items.add(
        new Chip(
          avatar: new CircleAvatar(backgroundColor: Color(res)),
          label: Text(
            '$res',
            style: TextStyle(
              color: Colors.black
            ),
          ),
        )
      );
    });
    return new Wrap(
      children: _items,
    );
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Color(_themeColor),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ListWidget(),
            new RaisedButton(
              onPressed: _changeColor,
              child: Text('点击随机改变颜色'),
              color: Color(_themeColor),
              textColor: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}