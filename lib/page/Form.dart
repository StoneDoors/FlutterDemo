import 'package:flutter/material.dart';
import 'tabs/Setting.dart';

class FormPage extends StatelessWidget{
  var arguments;
  FormPage({this.arguments});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Text("返回"),
        onPressed: (){
          Navigator.of(context).pop();
        },
      ),
      appBar: AppBar(
        title:Text(this.arguments["title"]),
      ),
      body: SettingPage(),

    );
  }
}