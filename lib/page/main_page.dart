import 'package:flutter/material.dart';
import 'package:flutter_application_demo/page/Home.dart';
import 'package:flutter_application_demo/page/Profile.dart';
import 'package:flutter_application_demo/page/todo.dart';

class MainPage extends StatefulWidget {
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State {
  int _selectedNavIndex = 0;
  List<Widget> containerList = [
    Home(),
    Profile(),
    TodoPage(),
  ];
  // _MainPageState(Key? key): super( key );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: containerList[_selectedNavIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedNavIndex,
        onTap: (index) {
          setState(() {
            _selectedNavIndex = index;
          });
          switch(index) {
            case 0:
              Navigator.pushNamed(context, "/home");
              break;
            case 1:
              Navigator.pushNamed(context, "/profile");
              break;
            case 2:
              Navigator.pushNamed(context, "/todos");
              break;
            case 3:
              Navigator.pushNamed(context, "/home");
              break;
          }
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: '首页',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: '发现',
            icon: Icon(Icons.book),
          ),
          BottomNavigationBarItem(
            label: '其他',
            icon: Icon(Icons.other_houses),
          ),
          BottomNavigationBarItem(
            label: '我的',
            icon: Icon(Icons.perm_identity),
          ),
        ],
      ),
    );
  }
}
