import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_basics/card_widget.dart';

void main (){
  runApp(StartApp());
}

class StartApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FlutterApp",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.pink
      ),
      home:DashBoardScreen(),
    );
  }

}
class DashBoardScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("DashBoardScreen"),
        ),
        body:Container(
          width: 300,
          height: 300,
          child: Stack(
            children: [
               Container(
                 width: 200,
                 height: 200,
                 color: Colors.yellowAccent,
               ),
              Positioned(
                left: 21,
                top: 21,
                child: Container(
                  width:200,
                  height: 200,
                  color: Colors.redAccent,
              ),
              )

            ],
          ),
        )
    );
  }

}