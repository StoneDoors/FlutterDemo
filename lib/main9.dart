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
  var list=_getData();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children:list,
    );
  }
}

List<Widget> _getData() {
  List<Widget> list = new List();
  for (var i = 0; i < 20; i++) {
    list.add(ListTile(
      title: Text("我是$i列表"),
    ));
  }
  return list;
}


