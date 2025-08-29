import 'package:flutter/material.dart';
import 'package:flutter_basics/main.dart';

class ProfileScreen extends StatelessWidget{
  var nameFromHome;

  ProfileScreen(this.nameFromHome);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title : Text("MY PROFILE"),
        ),
        body: Container(
          color: Colors.greenAccent,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("WELCOME $nameFromHome ",
                  style: TextStyle(fontSize: 35,
                   color: Colors.white),
                ),
                ElevatedButton(onPressed: (){
                Navigator.pop(context);
                },
                    child: Text('BACK'),
                          ),
              ],
            ),
        ),
        ),
    );
  }
}