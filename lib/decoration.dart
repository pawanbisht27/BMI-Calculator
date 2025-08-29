import 'package:flutter/material.dart';

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
      home:DashBoaedScreen() ,
    );
  }

}
class DashBoaedScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DashBoaedScreen"),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.black54,
        child: Center(
          child: Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.purple,
            // borderRadius: BorderRadius.circular(21), is this square shape
              border: Border.all(
                width: 3,
                color: Colors.white ,
              ),
              boxShadow: [
                BoxShadow(
                  blurRadius: 11,
                  color: Colors.white54,
                  spreadRadius: 8,
                )
              ],
              shape: BoxShape.circle
            ),
          ),
        ),
      ),
    );
  }
}