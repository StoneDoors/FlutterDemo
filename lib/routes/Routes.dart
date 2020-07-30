import 'package:flutter/material.dart';
import '../page/Form.dart';
import '../page/Jump.dart';
import '../page/Tabs.dart';
import '../page/user/Login.dart';
import '../page/user/RegisterFirst.dart';
import '../page/user/RegisterSecond.dart';
import '../page/user/RegisterThird.dart';
import '../page/AppBarPage.dart';
import '../page/ButtonPage.dart';

final routes = {
  "/":(context, {arguments})=>Tabs(),
  "/form": (context, {arguments}) => FormPage(arguments: arguments),
  "/search": (context, {arguments}) => JumpPage(),
  "/login": (context) => LoginPage(),
  "/registerFirst": (context) => RegisterFirstPage(),
  "/registerSecond": (context) => RegisterSecondPage(),
  "/registerThird": (context) => RegisterThirdPage(),
  "/appbar": (context) => AppBarPage(),
  "/buttons": (context) => ButtonPage(),
};

var onGenerateRoute = (RouteSettings settings) {
// 统一处理
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(
                  context, arguments: settings.arguments));
      return route;
    } else {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context));
      return route;
    }
  }
};