import 'dart:convert';

import 'package:flutter/material.dart';
class Nav {
  String title;
  String path;
  Nav(this.title,this.path);
}
/* var listData = new List<Nav>();
listData.add('1','2'); */

class NavListPage extends StatefulWidget{
  NavListPage({Key key, this.title}) : super(key: key);
  // 声明变量
  final String title;

  @override
  _NavListPageState createState() => _NavListPageState();
}

class _NavListPageState extends State<NavListPage>{
  int _currentIndex = 0;
  var _pageList = [
    BasicNavComp(),
    PageNavComp()
  ];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: _pageList[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            title: new Text('基础'),
            icon: Icon(Icons.subject,color: _currentIndex == 0?Colors.blue:Colors.black26,)
          ),
          BottomNavigationBarItem(
            title: new Text('页面'),
            icon: Icon(Icons.view_week,color: _currentIndex == 1?Colors.blue:Colors.black26,)
          )
        ],
        currentIndex: _currentIndex,
        onTap: (index) {
          setState((){
            _currentIndex = index;
          });
        },
      )
    );
  }
}

/* 基础nav */
class BasicNavComp extends StatefulWidget{
  BasicNavComp({Key key}):super(key: key);
  @override
  __BasicNavCompState createState() => __BasicNavCompState();
}

class __BasicNavCompState extends State<BasicNavComp>{
  var _items = [];

  @override
  void initState() {
    super.initState();
    /* final listData = json.decode({
      "result": [
        {"title": "1", "path": "home"},
        {"title": "2", "path": "home"}
      ]
    }.toString()); */
    var item = [];
    /* listData['result'].forEach((res) {
      item.add(Nav(res.title,res.path));
    }); */
    item.add(Nav('主题','home'));
    item.add(Nav('头部导航','home'));
    item.add(Nav('尾部导航','home'));
    item.add(Nav('图标Icon','/icon'));
    setState(() {
      _items = item;      
    });
  }

  @override
  Widget build(BuildContext context){
    return new ListView.builder(
      itemCount: _items.length,
      itemBuilder: (context, index) {
        return new Container(
          color: Colors.white,
          child: new Column(
            children: <Widget>[
              new ListTile(
                title: new Text(_items[index].title),
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: (){
                  Navigator.pushNamed(context, '/icon');
                },
              ),
              new Divider(color: Colors.black,height: 1.0)
            ],
          ),
          margin: EdgeInsets.all(0),
        ); 
      },
    );
  }
}
/* demo nav */
class PageNavComp extends StatefulWidget{
  PageNavComp({Key key}):super(key: key);
  @override
  _PageNavCompState createState() => _PageNavCompState();
}

class _PageNavCompState extends State<PageNavComp>{

  @override
  Widget build(BuildContext context){
    return new Column(
      children: <Widget>[
        Text('页面')
      ],
    );
  }
}