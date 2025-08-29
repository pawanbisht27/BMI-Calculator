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
          width: double.infinity,
          height: double.infinity,
          child: Wrap(
            direction: Axis.vertical,
              alignment: WrapAlignment.spaceEvenly ,
              spacing: 11,
              runSpacing: 11,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.cyanAccent,
                ),
            Container(
              width: 100,
              height: 100,
              color: Colors.limeAccent,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.amber,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.indigo,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
            ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.blueGrey,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.orangeAccent,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.purpleAccent,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.greenAccent,
                ),

              ],
            ),
        ),
        );
  }

}