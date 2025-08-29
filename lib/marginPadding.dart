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
      // body: Padding(   // margin
      //   padding:EdgeInsets.all(30),
      //   child: Text("hello pawan",style: TextStyle(fontSize: 30),),
      // )
      body: Container(
          color: Colors.blueGrey,
          margin: EdgeInsets.only(top: 15,left: 20,bottom: 34,right: 33),
          child: Padding(
              padding:EdgeInsets.all(11),
          child: Text("hello pawan",style: TextStyle(fontSize: 30,color: Colors.white),)),
    )
    );
  }

}