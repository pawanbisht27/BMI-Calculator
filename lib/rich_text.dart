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
        body:RichText(text: TextSpan(
          style: TextStyle(
            color: Colors.black,
              fontSize: 20
          ),
            children:<TextSpan> [
          TextSpan(text: "Hello"),
              TextSpan(text:" Pawan",style: TextStyle(
                fontSize: 30,
                color: Colors.blue,
                fontWeight: FontWeight.bold
              )),
              TextSpan(text: " Welcome to "),
              TextSpan(text: " Flutter",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 45,
                color: Colors.blue,
                fontStyle: FontStyle.italic,
                fontFamily:" FontMain"
              )),
        ]
        )
        )
    );
  }

}