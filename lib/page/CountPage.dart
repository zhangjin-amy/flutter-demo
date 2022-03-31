
import 'package:flutter/material.dart';

class CountPage extends StatefulWidget {
  _CountPageState createState() => _CountPageState();
}

class _CountPageState extends State {
  late int _count;
  @override
  void initState(){
    super.initState();
    print('=====initState');
    _count = 0;
  }
  Widget build(BuildContext context) {
    return CountWidget(
      count: _count,
      onHandlleCount: (){
        print('hi rouzip');
      },
      onHandleChange: (value){
        setState(() {
          _count = _count + value;
        });
    },);
  }
@override
void didChangeDependencies() {
  super.didChangeDependencies();
  print('=====didChangeDependencies');
}
@override
  void didUpdateWidget(CountPage oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('======didUpdateWidget');
  }
}

class CountWidget extends StatelessWidget {
  final int count;
  final void Function() onHandlleCount;
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
        TextButton(onPressed: onHandlleCount, child: Text('点击')),
        TextButton(onPressed: (){onHandlleCount();}, child: Text('点击')),
        TextButton(onPressed:(){onHandleChange(1);}, child: Text('点击+1')),
      ],
    );
  }
}