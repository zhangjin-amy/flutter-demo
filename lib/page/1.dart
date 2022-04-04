import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'dart:convert';
// import 'package:convert/convert.dart';
// ignore: unused_import
import 'package:flutter_application_demo/model/ResItemModel.dart';

class FutureBuilderRoute extends StatefulWidget {
  _FutureBuilderRouteState createState() => _FutureBuilderRouteState();
}

class _FutureBuilderRouteState extends State {
  Dio _dio = Dio();
  // ResItemModel time = ResItemModel.fromJson({'date': '4', 'time': ''});
  dynamic time;
  Future getData() {
    return _dio.get("http://poetry.apiopen.top/getTime");
    // {"code":200,"message":"成功!","result":{"date":"2022-04-01","time":"13:55:20","weekday":"星期五","dateTime":"2022-04-01 13:55:20"}}
  }
  // _dio.get("https://api.github.com/orgs/flutterchina/repos"

  @override
  void initState() {
    super.initState();
    _setData();
  }

  _setData() {
    getData().then((res) {
      // var a = res.data['result'];
      Map<String, dynamic> b = Map.from(res.data['result']);
      // print(a['date']);
      // print(b['date']);
      ResItemModel time1 = ResItemModel.fromJson(b);
      // print(time1);
      if (mounted) {
        setState(() {
          time = time1;
        });
      }
      print(time.date);
    }).catchError((err) => print(err));
  }

  @override
  Widget build(BuildContext context) {
    // print('9999');
    return Center(
      child: Column(
        children: [
          Text(time?.date ?? ''),
          // TextButton(
          //   child: Text('点击'),
          //   onPressed: () {
          //     print(888);
          //     // getData().then((res) {
          //     //   // var a = res.data['result'];
          //     //   Map<String, dynamic> b = Map.from(res.data['result']);
          //     //   // print(a['date']);
          //     //   // print(b['date']);
          //     //   ResItemModel time1 = ResItemModel.fromJson(b);
          //     //   // print(time1);
          //     //   if (mounted) {
          //     //     setState(() {
          //     //       time = time1;
          //     //     });
          //     //   }
          //     //   print(time.date);
          //     // }).catchError((err) => print(err));
          //   },
          // ),
        ],
      ),
    );
  }
}
