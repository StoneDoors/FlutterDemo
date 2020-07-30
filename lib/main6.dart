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

    return ListView(
      padding: EdgeInsets.all(10),
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.wifi,color: Colors.red,),
          title: Text('ABc'),
          subtitle: Text('sdaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'),
        ),
        ListTile(
          trailing: Icon(Icons.wifi,color: Colors.red,),
          title: Text('ABc'),
          subtitle: Text('sdaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'),
        ),
        ListTile(
          leading: Icon(Icons.wifi,color: Colors.red,),
          title: Text('ABc'),
          subtitle: Text('sdaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'),
        ),
        ListTile(
          leading: Icon(Icons.wifi,color: Colors.red,),
          title: Text('ABc'),
          subtitle: Text('sdaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'),
        ),
      ],
    );
  }
}
