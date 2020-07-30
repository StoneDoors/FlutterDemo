import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("StoneDoors"),
          ),
          body: HomeContent()),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return ListView(
      children: <Widget>[
        Image.asset("images/bz.jpg"),
        Container(
          child: Text(
            '标题',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 28.0),
          ),
          height: 60.0,
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        ),
        Image.asset("images/bz.jpg"),
        Container(
          child: Text(
            '标题',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 28.0),
          ),
          height: 60.0,
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        ),
        Image.asset("images/bz.jpg"),
        Container(
          child: Text(
            '标题',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 28.0),
          ),
          height: 60.0,
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        ),
        Image.asset("images/bz.jpg"),
      ],
    );
  }
}
