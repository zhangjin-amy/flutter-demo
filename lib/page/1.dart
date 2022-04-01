import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'dart:convert';
// import 'package:convert/convert.dart';
// ignore: unused_import
import 'package:flutter_application_demo/model/TimeModel.dart';

class FutureBuilderRoute extends StatefulWidget {
  _FutureBuilderRouteState createState() => _FutureBuilderRouteState();
}

class _FutureBuilderRouteState extends State {
  Dio _dio = Dio();
  late final TimeModel time;
  Future getData() {
    return _dio.get("http://poetry.apiopen.top/getTime");
  }
  // _dio.get("https://api.github.com/orgs/flutterchina/repos"

  @override
  Widget build(BuildContext context) {
    // print('9999');
    return Center(
      child: TextButton(
        child: Text('点击'),
        onPressed: () {
          print(888);
          getData()
            .then((res){
              print(res.data['code']);
              // time = TimeModel.fromJson(res);
              // print(time.code);
            })
            .catchError((err) => print(err));
        },
      ),
    );
  }
}
