import 'package:flutter/material.dart';

class NavListPage extends StatefulWidget{
  NavListPage({Key key, this.title}) : super(key: key);
  // 声明变量
  final String title;

  @override
  _NavListPageState createState() => _NavListPageState();
}

class _NavListPageState extends State<NavListPage>{

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
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            title: Text('基础'),
            icon: Icon(Icons.subject,color: Colors.green,)
          ),
          BottomNavigationBarItem(
            title: Text('页面'),icon: Icon(Icons.view_week,color: Colors.green,)
          )
        ],
      )
    );
  }
}