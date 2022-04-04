import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutter_application_demo/model/ListInfoModel.dart';
import 'package:flutter_application_demo/model/ListItemMedel.dart';

class ListPage extends StatefulWidget {
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State {
  Dio _dio = Dio();

  List<ListItemModel> list = [];

  @override
  void initState() {
    super.initState();
    _getRes().then((res) {
      var data = res.data;
      var result = ListInfoModel.fromJson(data).result;
      if (mounted) {
        setState(() {
          list = result;
        });
      }
    }).catchError((err) {
      print(err.toString());
    });
  }

  Future<Response<dynamic>> _getRes() {
    String url = "https://api.apiopen.top/getJoke";
    Map<String, dynamic> data = {'type': 'all', 'page': 1, 'count': 10};
    return _dio.post(url, data: data);
  }

  @override
  Widget build(BuildContext context) {
    // Widget contentWidget;
    // contentWidget = ListView.builder(
    //   physics: const ClampingScrollPhysics(),
    //   itemCount: list.length,
    //   itemBuilder: (context, index) {
    //     return ListItemWidget(
    //       hotItem: list[index],
    //     );
    //   },
    // );
    print(999);
    // return ListView.builder(
    //     itemCount: list.length,
    //     itemExtent: 50.0, //强制高度为50.0
    //     itemBuilder: (BuildContext context, int index) {
    //       // return ListTile(title: Text("${list[index].name}"));
    //     });
    // return ListView(
    //   children: const <Widget>[
    //     ListTile(
    //       leading: Icon(Icons.map),
    //       title: Text('Map'),
    //     ),
    //     ListTile(
    //       leading: Icon(Icons.photo_album),
    //       title: Text('Album'),
    //     ),
    //     ListTile(
    //       leading: Icon(Icons.phone),
    //       title: Text('Phone'),
    //     ),
    //   ],
    // );

    // return GridView.count(
    //   // Create a grid with 2 columns. If you change the scrollDirection to
    //   // horizontal, this produces 2 rows.
    //   crossAxisCount: 2,
    //   // Generate 100 widgets that display their index in the List.
    //   children: List.generate(100, (index) {
    //     return Center(
    //       child: Text(
    //         'Item $index',
    //         style: Theme.of(context).textTheme.headline5,
    //       ),
    //     );
    //   }),
    // );

    return Container(
          margin: const EdgeInsets.symmetric(vertical: 20.0),
          height: 200.0,
          child: ListView(
            // This next line does the trick.
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                width: 160.0,
                color: Colors.red,
              ),
              Container(
                width: 160.0,
                color: Colors.blue,
              ),
              Container(
                width: 160.0,
                color: Colors.green,
              ),
              Container(
                width: 160.0,
                color: Colors.yellow,
              ),
              Container(
                width: 160.0,
                color: Colors.orange,
              ),
            ],
          ),
        );
  }
}
