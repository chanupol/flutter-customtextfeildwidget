import 'package:customwidget/src/ui/Home.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: 'Test Custom Widget',
      theme: new ThemeData(primaryColor: Color.fromRGBO(58, 66, 86, 1.0)),
      home: new CustomeHomePage(
        title: 'Test Custom Widget',
      ),
    );
  }
}
