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
    // TODO: implement build
    return GridView.builder(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        itemCount: listData.length,
        itemBuilder: (context, index) {
          return Container(
            child: Column(
              children: <Widget>[
                Image.asset(listData[index]['imageUrl']),
                SizedBox(
                  height: 10.0,
                ),
                Text(listData[index]['title']),
                Text(listData[index]['author']),
              ],
            ),
            decoration: BoxDecoration(
                border: Border.all(
              color: Colors.grey[300],
              width: 1,
            )),
          );
        });
  }
}
