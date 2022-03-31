import 'package:flutter/material.dart';
import 'package:flutter_application_demo/page/CountPage.dart';
import 'package:flutter_application_demo/widget/Echo.dart';
import 'package:flutter_application_demo/widget/StateLifecycleTest.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('我的应用'),
        ),
        body: CountPage(),
      ),
    );
  }
}

