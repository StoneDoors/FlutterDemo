import 'package:flutter/material.dart';

class AppBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("AppbarDemo"),
          centerTitle: true,
          bottom:TabBar(
            tabs: <Widget>[
              Tab(text: "热门"),
              Tab(text: "推荐"),
            ],
          ),
//        leading: IconButton(
//          icon: Icon(Icons.menu),
//          onPressed: () {
//            print('menu');
//          },
//        ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            )
          ],
        ),
        body:TabBarView(
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
        )
      ),
    );
  }
}
