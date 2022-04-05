import 'package:flutter/material.dart';
import 'package:flutter_application_demo/page/Profile.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: const Text('Main Screen'),),
     body: Container(
       child: Column(
         children: [
           GestureDetector(
             child: Text('点击跳转profle页'),
             onTap: (){
               Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));
             },
           )
         ],
       ),
     ),
   );
  }
}