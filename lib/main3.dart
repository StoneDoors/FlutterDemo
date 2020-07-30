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
        child: Text(
          "你好221212adasdasdas",
          textAlign: TextAlign.right,
          overflow: TextOverflow.fade,
          maxLines: 2,
          style: TextStyle(
            fontSize: 40.0,
            color: Colors.blue,
            fontWeight: FontWeight.w900,
            fontStyle: FontStyle.italic,
            decoration: TextDecoration.lineThrough,
            decorationColor: Colors.red,
            decorationStyle: TextDecorationStyle.dashed,
            letterSpacing: 1.0
          ),
        ),
        height: 300.0,
        width: 300.0,
        decoration: BoxDecoration(
          color: Colors.grey,
          border: Border.all(
            color: Colors.blue[400]
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(150)
          )
        ),
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.fromLTRB(10,30,5,0),
//        transform: Matrix4.translationValues(100, 0,0),
        transform: Matrix4.rotationZ(0.3),
      ),
    );
  }
}
