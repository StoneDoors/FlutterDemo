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
//        child: Image.asset(
//          "images/bz.jpg",
//          colorBlendMode: BlendMode.exclusion,
//          fit: BoxFit.cover,
//        ),
        width: 300.0,
        height: 300.0,
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(150),
          image: DecorationImage(
            image: AssetImage("images/bz.jpg"),
            fit: BoxFit.contain
          ),
        ),
      ),
    );
  }
}
