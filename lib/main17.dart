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
    return Container(
      height: 400,
      width: 300,
      color: Colors.red,
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: Icon(Icons.home, size: 40, color: Colors.white),
          ),
          Align(
            alignment: Alignment.center,
            child: Icon(Icons.search, size: 40, color: Colors.white),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Icon(Icons.settings, size: 40, color: Colors.white),
          ),
          Positioned(
            top: 100,
            left: 10,
            child: Icon(Icons.settings, size: 40, color: Colors.white),
          )
        ],
      ),
    );
  }
}
