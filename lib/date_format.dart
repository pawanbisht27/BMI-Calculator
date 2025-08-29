import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_basics/card_widget.dart';
import 'package:intl/intl.dart';

void main (){
  runApp(StartApp());
}

class StartApp extends StatelessWidget{
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
class DashBoardScreen extends StatefulWidget{
  const DashBoardScreen({Key? key}):super (key: key);

  @override
  State<DashBoardScreen> createState() =>_DashBoardScreenState();
}
class _DashBoardScreenState extends State<DashBoardScreen>{
  var time = DateTime.now();
  @override
  Widget build(BuildContext context) {
    var time = DateTime.now();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("DashBoardScreen"),
        ),
        body:Center(
          child: Container(
            width: 200,
            height: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Current Time: ${DateFormat().format(time)}',style: TextStyle(fontSize:25),),
                ElevatedButton(onPressed: (){
                  setState(() {

                  });
                },
                    child:Text('current time'))
              ],
            ),
          ),
        )
    );
  }

}