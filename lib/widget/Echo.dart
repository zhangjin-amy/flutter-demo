import 'package:flutter/material.dart';

// 测试无状态组件
class Echo extends StatelessWidget {
  Echo({
    Key? key,
    // 组件接受的传参
    required this.text,
    this.backColor = Colors.grey
  }): super(key: key);
  final String text;
  final Color backColor;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: backColor,
        child: Text(text),
      ),
    );
  }
}