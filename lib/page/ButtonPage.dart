import 'package:flutter/material.dart';
import 'tabs/Search.dart';

class ButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("按钮演示页面"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.settings_phone),
        backgroundColor: Colors.cyanAccent,
        onPressed: (){

        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(width: 10),
              RaisedButton(
                child: Text("有颜色按钮"),
                color: Colors.blue,
                textColor: Colors.red,
                onPressed: () {
                  print("普通按钮");
                },
              ),
              SizedBox(width: 10),
              RaisedButton(
                child: Text("有阴影按钮"),
                color: Colors.blue,
                textColor: Colors.red,
                elevation: 20,
                onPressed: () {
                  print("普通按钮");
                },
              ),
              RaisedButton.icon(
                icon: Icon(Icons.search),
                label: Text("图标按钮"),
                color: Colors.blue,
                textColor: Colors.red,
                onPressed: () {},
              )
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 50,
                width: 400,
                child: RaisedButton(
                  child: Text("普通按钮"),
                  onPressed: () {
                    print("普通按钮");
                  },
                ),
              ),
              SizedBox(width: 10),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Container(
                  height: 60,
                  child: RaisedButton(
                    child: Text("普通按钮"),
                    onPressed: () {
                      print("普通按钮");
                    },
//                    shape: RoundedRectangleBorder(
//                      borderRadius: BorderRadius.circular(10)
//                    ),
                    shape: CircleBorder(
                        side:BorderSide(
                          color: Colors.white
                        ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
            ],
          )
        ],
      ),
    );
  }
}
