import 'package:flutter/material.dart';
import '../Brower.dart';

class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          child: Text("跳转到搜索页面"),
          onPressed: () {
            Navigator.pushNamed(context, "/search");
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
        RaisedButton(
          child: Text("跳转到表单页面"),
          onPressed: () {
            Navigator.pushNamed(context, "/form", arguments: {"title": "我的表单"});
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
        RaisedButton(
          child: Text("跳转AppBarDemo页面"),
          onPressed: () {
            Navigator.pushNamed(context, "/appbar");
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
        RaisedButton(
          child: Text("跳转WEB页面"),
          onPressed: () {
            Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
              return BrowserPage(
                url: "http://Stonedoors.cn/",
                title: "小憩",
              );
            }));
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
        RaisedButton(
          child: Text("跳转Buttons页面"),
          onPressed: () {
            Navigator.pushNamed(context, "/buttons");
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
      ],
    );
  }
}
