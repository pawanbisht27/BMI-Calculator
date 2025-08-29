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
class DashBoaedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DashBoaedScreen"),
      ),
      body:Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              width: 110,
              height: 100,
              color: Colors.blue,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              width:110,
              height: 100,
              color: Colors.purple,
            ),
          ),
          Expanded(
            child: Container(
              width: 110,
              height: 100,
              color: Colors.cyan,
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              // width: 110, full screen
              height: 100,
              color: Colors.redAccent,
            ),
          ),
        ],
      ),
    );
  }

}