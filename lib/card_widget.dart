import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

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
      body:Center(
        child: Card(
          shadowColor: Colors.red,
            elevation: 7,
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('HELLO PAWAN BISHT'),
        )),
      )
      );
  }
}