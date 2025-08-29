import 'dart:ui_web';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyHomeState();
  }


}
class MyHomeState extends State<MyHomePage>{

  var no1Controller = TextEditingController();
  var no2Controller = TextEditingController();

  var result ="";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful"),
      ),
      body:Container(
        color: Colors.blue.shade100,
        child:Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  keyboardType: TextInputType.number,
                  controller: no1Controller,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: no2Controller,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(onPressed: (){
                      var no1 =double.parse(no1Controller.text.toString());
                      var no2 =double.parse(no2Controller.text.toString());

                      var sum=no1+no2;

                      result= "the Sum of $no1 and $no2 is $sum";

                      setState(() {

                      });

                      }, child: Text("ADD")),

                      ElevatedButton(onPressed: (){
                        var no1 =int.parse(no1Controller.text.toString());
                        var no2 =int.parse(no2Controller.text.toString());

                        var diff=no1-no2;

                        result= "the Sub of $no1 and $no2 is $diff";

                        setState(() {

                        });

                      }, child: Text("SUB")),

                      ElevatedButton(onPressed: (){
                        var no1 =int.parse(no1Controller.text.toString());
                        var no2 =int.parse(no2Controller.text.toString());

                        var SUB=no1*no2;

                        result= "the MUL of $no1 and $no2 is $SUB";

                        setState(() {

                        });

                      }, child: Text("MUL")),

                      ElevatedButton(onPressed: (){
                        var no1 =int.parse(no1Controller.text.toString());
                        var no2 =int.parse(no2Controller.text.toString());

                        var DIV=no1/no2;

                        result= "the Div of $no1 and $no2 is $DIV";

                        setState(() {

                        });

                      }, child: Text("DIV")),

                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.all(23),
               child: Text(result,
                 style: TextStyle(fontSize: 25,
                     color: Colors.black),),
                )
              ],
            ),
          ),
        ) ,

      )
    );
  }

}