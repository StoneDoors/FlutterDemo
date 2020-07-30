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
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: <Widget>[
        Expanded(
          flex: 1,
          child:IconContainer(Icons.home, color: Colors.white),
        ),
        Expanded(
          flex: 2,
          child:IconContainer(Icons.home, color: Colors.white),
        ),
//        IconContainer(Icons.settings, color: Colors.blue),
      ],
    );
  }
}

class IconContainer extends StatelessWidget {
  double size = 32.0;
  Color color = Colors.red;
  IconData icon;

  IconContainer(this.icon, {this.size, this.color});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 100.0,
      width: 100.0,
      color: Colors.red,
      child: Center(
        child: Icon(this.icon, size: this.size, color: this.color),
      ),
    );
  }
}
