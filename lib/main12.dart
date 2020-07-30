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

  List<Widget> list=new List();
  HomeContent(){
    for (var i = 0; i < 20; i++) {
      list.add(Container(
        alignment: Alignment.center,
        child: Text(
          '这是第$i条数据',
          style: TextStyle(color: Colors.white),
        ),
        color: Colors.lightBlueAccent,
      ));
    }
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 10.0,
      mainAxisSpacing: 10.0,
      padding: EdgeInsets.all(10),
      childAspectRatio: 1.2,
      children: this.list,
    );
  }
}


