import 'package:flutter/material.dart';
import 'package:flutter_application_demo/page/index.dart';
import 'package:flutter_application_demo/page/main_page.dart';
// import 'package:flutter_application_demo/page/Profile.dart';

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
          return (Column(children: [
            ListTile(
              title: Text(items[index]),
            ),
            Divider(
              color: Colors.blue,
            )
          ]));
        } else {
          return ListTile(
            title: Text(items[index]),
          );
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
  // final List<String> items = List<String>.generate(10000, (i) => 'Item $i');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // initialRoute: '/home',
      // routes: {
      //   '/home': (BuildContext context) => Home(),
      //   '/profile':  (BuildContext context) => Profile(),
      // },
      home: MainPage()
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Screen'),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return  DetailScreen();
          }));
        },
        child: Hero(
          tag: 'imageHero',
          // child: Image.asset(
          //   'assets/images/amy1.jpg'
          // ),
          child: Text(
            '看看小宋喜欢啥',
            style: TextStyle(
              color: Colors.pink, 
              backgroundColor: Colors.yellow,
              fontSize: 20,
              fontWeight: FontWeight.w400
            ),
          )
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  DetailScreen({Key? key}) : super(key: key);
  List _imageUrl = [
    'assets/images/amy1.jpg',
    'assets/images/amy3.jpg',
    'assets/images/amy2.jpg',
    'assets/images/amy4.jpg',
    'assets/images/amy1.jpg',
    'assets/images/amy1.jpg',
    'assets/images/amy1.jpg',
    'assets/images/amy1.jpg',
    'assets/images/amy1.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Screen'),
      ),
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverGrid(
          //Grid
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, //Grid按两列显示
            mainAxisSpacing: 15.0,
            crossAxisSpacing: 15.0,
            // childAspectRatio: 4.0,
          ),
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              //创建子widget
              return Container(
                width: 100,
                height: 100,
                color: Colors.red,
                // child: Text(_imageUrl[index]),
                child: Image.asset(_imageUrl[index], fit: BoxFit.fill,),
              );
            },
            childCount: _imageUrl.length,
          ),
        ),
          

          // SliverList(
          //   delegate: SliverChildBuilderDelegate(
          //     (context, index) => Text('amy'),
          //     childCount: 10,
          //   )
          // ),
          // GridView.builder(gridDelegate: gridDelegate, itemBuilder: itemBuilder)
          // ListView.builder(itemBuilder: (context, index) => Text('$index'), itemCount: 10,),
        ],
      ),
      
      
      // GestureDetector(
      //     onTap: () {
      //       Navigator.pop(context);
      //     },
      //     child: Column(
      //       children: [
      //         // ListView.builder(itemBuilder: (context, index) => Text('$index'), itemCount: 10,),
      //         Center(
      //           child: Hero(
      //             tag: 'imageHero',
      //             child: Image.network(
      //               'https://picsum.photos/250?image=9',
      //             ),
      //           ),
      //         ),
      //       ],
      //     )),
    );
  }
}
