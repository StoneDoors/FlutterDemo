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

    return Container(
      height: 180.0,
      child: ListView(scrollDirection: Axis.horizontal, children: <Widget>[
        Container(
          width: 180.0,
          height: 180.0,
          color: Colors.red,
        ),
        Container(
          width: 180.0,
          height: 180.0,
          color: Colors.pink,
        ),
        Container(
          width: 180.0,
          height: 180.0,
          color: Colors.blue,
        ),
        Container(
          width: 180.0,
          height: 180.0,
          color: Colors.black,
        ),
      ]),
    );
  }
}
