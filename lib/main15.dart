import 'package:flutter/material.dart';
import 'res/listData.dart';

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
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
      child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 1.7,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.asset("images/bz.jpg", fit: BoxFit.fill),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.asset("images/bz.jpg", fit: BoxFit.fill),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.asset("images/bz.jpg", fit: BoxFit.fill),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.asset("images/bz.jpg", fit: BoxFit.fill),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.asset("images/bz.jpg", fit: BoxFit.fill),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.asset("images/bz.jpg", fit: BoxFit.fill),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.asset("images/bz.jpg", fit: BoxFit.fill),
          ),
        ],
      ),
    );
  }
}
