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
      body: Center(
        child: Text(
          "HELLO PAWAN BISHT ",style: TextStyle(fontFamily: "FontMain",fontWeight: FontWeight.w900),
        ),
      ),
    );
  }

}