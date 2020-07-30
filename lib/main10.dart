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
  var list =listData.map((value){
    return ListTile(
      leading: Image.asset(value['imageUrl']),
      title:Text(value['title']),
      subtitle: Text(value['author']),
    );
  });
  return list.toList();
}


