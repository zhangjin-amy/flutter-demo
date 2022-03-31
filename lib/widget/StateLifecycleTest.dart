import 'package:flutter/material.dart';

class StateLifecycleTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Counter();
  }
}

class Counter extends StatefulWidget {
  _CounterState createState() => _CounterState();
}

class _CounterState extends State {
  int _count = 0;
  @override
  void initState() {
    super.initState();
    print('======initState');
  }
  @override
  void didUpdateWidget(Counter oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("=====didUpdateWidget ");
  }

  void _totalCount() {
    setState(() => _count++);
  }
  
  @override
  Widget build(BuildContext context) {
    print('======build');
    return Center(
      child: Column(
        children: [
          Text('$_count'),
          TextButton(
            onPressed: _totalCount,
            child: Text('点击计数'),),
        ],
      ),
    );
  }
}