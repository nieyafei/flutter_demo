import 'package:flutter/material.dart';
// pages
import 'package:flutter_demo/pages/nav.dart';
import 'package:flutter_demo/pages/route.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo HT',
      color: Color.fromRGBO(255, 255, 255, 1),
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: NavListPage(title: 'Flutter效果'), // 路由默认
      routes: RoutePage.getRoutes(),// 路由配置
    );
  }
}
