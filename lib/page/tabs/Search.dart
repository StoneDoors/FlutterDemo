import 'package:flutter/material.dart';
import '../Form.dart';

class SearchPage extends StatefulWidget {
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          RaisedButton(
            child: Text("跳转到登陆页面"),
            onPressed: () {
              Navigator.pushNamed(context, "/login");
            },
          ),
          RaisedButton(
            child: Text("跳转到注册页面"),
            onPressed: () {
              Navigator.pushNamed(context, "/registerFirst");
            },
          ),
        ],
      ),
    );
  }
}
