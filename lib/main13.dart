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
  List<Widget> list = new List();

  HomeContent() {
    list = listData.map((value) {
      return Container(
        child: Column(
          children: <Widget>[
            Image.asset(value['imageUrl']),
            SizedBox(height: 10.0,),
            Text(value['title']),
            Text(value['author']),
          ],
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey[300],
            width: 1,
          )
        ),
      );
    }).toList();
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
