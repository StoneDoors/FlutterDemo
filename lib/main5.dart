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

    return Center(
      child: Container(
          child: ClipOval(
            child: Image.asset(
              "images/a.jpeg",
              width: 200.0,
              height: 200.0,
              fit: BoxFit.cover,
            ),
          ),
      ),
    );
  }
}
