import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_basics/UIhelper/util.dart';
import 'package:flutter_basics/card_widget.dart';
import 'package:flutter_basics/widgets/rounded_button.dart';

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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 35,
                child: RoundedButton(btnName: "PLAY",
                  icon: Icon(Icons.play_arrow_outlined),
                  callBack: (){
                    print("Logged in");
                  },
                  textStyle: mTextstyle11(),
                ),
              ),
              Container(height: 12,),
              Container(
                height: 35,
                width: 100,
                child: RoundedButton(btnName: "PRESS",
                icon: Icon(Icons.play_arrow_outlined),
                callBack: (){
                  print("Logged in");
                },
                  bgColor: Colors.orange,
                textStyle: mTextstyle11(),
                ),
              ),
            ],
          ),
        )
    );
  }

}