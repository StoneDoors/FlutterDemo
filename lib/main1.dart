import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Text(
        "你好2",
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 40.0,
          color: Color.fromRGBO(244, 233, 121, 0.5),
        ),
      ),
    );
  }
}