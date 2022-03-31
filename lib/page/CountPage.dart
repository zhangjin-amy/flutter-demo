import 'dart:ffi';

import 'package:flutter/material.dart';

class CountPage extends StatefulWidget {
  _CountPageState createState() => _CountPageState();
}

class _CountPageState extends State {
  int _count = 0;
  Widget build(BuildContext context) {
    return CountWidget(count: _count, onHandlleCount: (){
      print('hi rouzip');
    }, onHandleChange: (value){
      setState(() {
        _count = _count + value;
      });
    },);
  }
}

class CountWidget extends StatelessWidget {
  final int count;
  final VoidCallback onHandlleCount;
  final Function(int) onHandleChange;
  CountWidget({
    required this.count,
    required this.onHandlleCount,
    required this.onHandleChange,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('$count'),
        TextButton(onPressed:onHandlleCount, child: Text('点击')),
        TextButton(onPressed:(){onHandleChange(1);}, child: Text('点击+1')),
      ],
    );
  }
}