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
    return Wrap(
      spacing: 10,
      runSpacing: 10,
//      alignment: WrapAlignment.start,
//      runAlignment: WrapAlignment.center,
      direction: Axis.horizontal,
      children: <Widget>[
        Mybutton("第1季"),
        Mybutton("第一季第二季收到"),
        Mybutton("第一季"),
        Mybutton("第一季"),
        Mybutton("第一季"),
        Mybutton("第一季"),
        Mybutton("第一季"),
        Mybutton("第一季"),
        Mybutton("第一季"),
        Mybutton("第一季"),
        Mybutton("第一季"),
        Mybutton("第一季"),
        Mybutton("第一季"),
        Mybutton("第一季"),
        Mybutton("第一季"),
        Mybutton("第一季"),
      ],
    );
  }
}

class Mybutton extends StatelessWidget {
  final String text;

  const Mybutton(this.text, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
      child: Text(this.text),
      textColor: Theme.of(context).accentColor,
      onPressed: () {},
    );
  }
}
