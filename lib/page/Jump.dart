import 'package:flutter/material.dart';
import 'tabs/Search.dart';

class JumpPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
          title:Text("搜索页面"),
      ),
      body: SearchPage(),
    );
  }
}