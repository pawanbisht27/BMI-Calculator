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
        body:Wrap(
          direction: Axis.vertical,
          children: [
            SizedBox.square(
              dimension:200,
              child: ElevatedButton(onPressed: (){
              },
                  child: Text('click')),
            ),

            SizedBox(
              width: 20,
              height: 20,
            ),

            SizedBox.square(
              dimension:200,
              child: ElevatedButton(onPressed: (){
              },
                  child: Text('click')),
            ),

            SizedBox(
              width: 30,
              height: 20,
            ),

            SizedBox.square(
              dimension:200,
              child: ElevatedButton(onPressed: (){
              },
                  child: Text('click')),
            ),
          ],
        )
    );
  }

}
