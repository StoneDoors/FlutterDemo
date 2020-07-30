import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'tabs/Home.dart';
import 'tabs/Search.dart';
import 'tabs/Setting.dart';

class Tabs extends StatefulWidget {
  _TabState createState() => _TabState();
}

class _TabState extends State<Tabs> {
  int _currentIndex = 0;

  List _pageList = [HomePage(), SettingPage(), SearchPage()];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("测试"),
      ),
      floatingActionButton: Container(
        height: 80,
        width: 80,
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.only(bottom: 14),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Colors.white,
        ),
        child: FloatingActionButton(
          child: Icon(Icons.settings_phone),
          backgroundColor: this._currentIndex==1?Colors.red:Colors.blueAccent,
          onPressed: () {
            setState(() {
              this._currentIndex = 1;
            });
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: this._pageList[this._currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this._currentIndex,
        onTap: (int index) {
          setState(() {
            this._currentIndex = index;
          });
        },
        iconSize: 20.0,
        fixedColor: Colors.red,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("首页")),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), title: Text("设置")),
          BottomNavigationBarItem(icon: Icon(Icons.search), title: Text("搜索")),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            DrawerHeader(
              child: UserAccountsDrawerHeader(
                accountName: Text("Shyoo"),
                accountEmail: Text("837912890@qq.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("images/bz.jpg"),
                ),
                decoration: BoxDecoration(
//                color: Colors.blue,
                  image: DecorationImage(
                      image: AssetImage("images/bz.jpg"), fit: BoxFit.cover),
                ),
              ),
            ),
            ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.home),
                ),
                title: Text("我的空间")),
            Divider(),
            ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.people),
                ),
                title: Text("用户中心")),
            Divider(),
            ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.settings),
                ),
                title: Text("设置中心")),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: Text("right"),
      ),
    );
  }
}
