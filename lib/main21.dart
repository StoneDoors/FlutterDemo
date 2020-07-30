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
      body: HomeContent(),
    ));
  }
}

class HomeContent extends StatefulWidget {
  HomeContent({Key key}) : super(key: key);

  _HomeContent createState() => _HomeContent();
}

class _HomeContent extends State<HomeContent> {
  var count = 1;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Chip(
          label: Text('${this.count}'),
        ),
        RaisedButton(
          child: Text('按钮'),
          onPressed: () {
            setState(() {
              this.count++;
            });
          },
        )
      ],
    );
  }
}
