import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
//    // TODO: implement build
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: <Widget>[
              Expanded(
                child: TabBar(
                  tabs: <Widget>[
                    Tab(text: "热销"),
                    Tab(text: "推荐"),
                  ],
                ),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text("第一个Tab"),
                ),
                ListTile(
                  title: Text("第一个Tab"),
                ),
                ListTile(
                  title: Text("第一个Tab"),
                ),
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text("第二个Tab"),
                ),
                ListTile(
                  title: Text("第二个Tab"),
                ),
                ListTile(
                  title: Text("第二个Tab"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
