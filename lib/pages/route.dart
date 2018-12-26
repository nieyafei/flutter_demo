/* 路由页面 */
import 'package:flutter_demo/pages/icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/theme.dart';

class RoutePage {
  static String ICON_PAGE = '/icon';
  static String THEME_PAGE = '/theme';

  static Map<String, WidgetBuilder> getRoutes() {
    var route = {
      ICON_PAGE: (BuildContext context) {
        return IconPage(title: 'Flutter图标');
      },
      THEME_PAGE: (BuildContext context) {
        return ThemePage(title: 'Flutter 主题');
      }
    };

    return route;
  }
}

