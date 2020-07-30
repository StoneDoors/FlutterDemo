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
  List<Widget> list=[];
  HomeContent(){
    for(var i=0;i<20;i++){
      list.add(PicCard());
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
        children:this.list,
    );
  }
}

class PicCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      margin: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Image.asset("images/bz.jpg", fit: BoxFit.fill),
          ),
          ListTile(
            title: Text("张三"),
            subtitle: Text("工程师"),
          ),
        ],
      ),
    );
  }
}
