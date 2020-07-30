import 'package:flutter/material.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter'),
          ),
          body: HomeContent(),
        ),
        theme: ThemeData(
          primarySwatch: Colors.blueGrey
        ),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Text(
        "你好2",
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 40.0,
          color: Colors.blue,
        ),
      ),
    );
  }
}
