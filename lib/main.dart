import 'package:flutter/material.dart';
import 'package:flutter_application_demo/page/1.dart';
import 'package:flutter_application_demo/page/AmyHome.dart';
import 'package:flutter_application_demo/page/ListPage.dart';

void main() {
  runApp(MyApp());
}

class ListRouzip extends StatelessWidget {
  // @override
  // Widget build(BuildContext context) {
  //   return SliverList(
  //     // Use a delegate to build items as they're scrolled on screen.
  //     delegate: SliverChildBuilderDelegate(
  //         (context, index) => Text('rouzip#$index'),
  //         childCount: 10),
  //   );
  // }
  final List<String> items;
  ListRouzip({Key? key, required this.items}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        if (index % 2 == 0) {
          return (
            Column(
              children: [
                ListTile(title: Text(items[index]),),
                Divider(color: Colors.blue,)
              ]
            )
          );
        } else {
          return ListTile(title: Text(items[index]),);
        }
      },
      itemCount: items.length,
    );
    // return ListView.separated(
    //   itemBuilder: (BuildContext context, int index) => ListTile(title: Text(items[index])), 
    //   separatorBuilder: (BuildContext context, int index) {
    //     if(index % 2 == 0) {
    //       return Divider(color: Colors.red,);
    //     } else {
    //       return Divider(color: Colors.green,);
    //     }
    //   },
    //   itemCount: items.length
    // );
  }
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final List<String> items = List<String>.generate(10000, (i) => 'Item $i');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        // body: ListView.builder(
        //   itemCount: items.length,
        //   itemBuilder: (context, index) {
        //     return ListTile(
        //       title: Text(items[index]),
        //     );
        //   },
        // ),
        body: ListRouzip(items: List<String>.generate(10000, (i) => 'Item $i')),
        // body: CustomScrollView(
        //   slivers: [
        //     // SliverAppBar(
        //     //   title: Text('rouzip'),
        //     //   flexibleSpace: Image.asset(
        //     //     'assets/images/amy.jpg',
        //     //     fit: BoxFit.fill,
        //     //   ),
        //     //   expandedHeight: 200,
        //     // ),
        //     // SliverList(delegate: SliverChildBuilderDelegate(
        //     //     // The builder function returns a ListTile with a title that
        //     //     // displays the index of the current item.
        //     //     (context, index) => ListTile(title: Text('Item #$index')),
        //     //     // Builds 1000 ListTiles
        //     //     childCount: 1000,
        //     //   ),)

        //     // ListView 适用于短列表，长列表需要ListView.build
        //     // ListRouzip(items: List<String>.generate(1000, (index) => '$index'))
        //   ],
        // ),
      ),
    );
  }
}
