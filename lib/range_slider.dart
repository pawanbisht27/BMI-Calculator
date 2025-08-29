import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_basics/main.dart';

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
class DashBoardScreen extends StatefulWidget{
  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  RangeValues values= RangeValues((0), 100);

  @override
  Widget build(BuildContext context) {

    RangeLabels labels = RangeLabels(values.start.toString(),
        values.end.toString());
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("DashBoardScreen"),
        ),
        body:Center(
          child: RangeSlider(values: values,
              labels: labels,
              divisions: 20,
              activeColor: Colors.lightGreen,
              inactiveColor: Colors.lightGreenAccent,
              onChanged: (newValue){
                values = newValue;
                print('${newValue.start},${newValue.end}');
                setState(() {

                });
              },
          ),
        )
    );
  }
}