import 'package:flutter/material.dart';
import 'routes/Routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
//        home: Tabs(),
        debugShowCheckedModeBanner: false,
        initialRoute: "/",
        onGenerateRoute: onGenerateRoute);
  }
}
