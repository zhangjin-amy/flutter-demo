import 'package:flutter/material.dart';
import 'package:flutter_application_demo/page/Home.dart';
import 'package:flutter_application_demo/page/Profile.dart';

class MainPage extends StatefulWidget {
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State {
  int _selectedNavIndex = 0;
  List<Widget> containerList = [
    Home(),
    Profile(),
  ];
  // _MainPageState({Key? key}): super(key: key);
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
