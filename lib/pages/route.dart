/* 路由页面 */
import 'package:flutter_demo/pages/icon.dart';
import 'package:flutter/material.dart';

class RoutePage {
  static String ICON_PAGE = '/icon';

  static Map<String, WidgetBuilder> getRoutes() {
    var route = {
      ICON_PAGE: (BuildContext context) {
        return IconPage(title: 'Flutter图标');
      }
    };

    return route;
  }
}

