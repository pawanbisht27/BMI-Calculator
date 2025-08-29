import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_basics/UIhelper/util.dart';
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
          primarySwatch: Colors.orange,
        textTheme: TextTheme(
          headlineMedium: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),
          headlineSmall: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.cyanAccent),
        )
        ),

      home:DashBoardScreen() ,
    );
  }

}
class DashBoardScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("DashBoardScreenColumn"),
      ),
        body: Column(
        children: [
          Text("HELLO PAWAN",style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: Colors.red),),
          Text("HELLO PAWAN",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600,fontStyle: FontStyle.italic),),
          Text("HELLO PAWAN",style: Theme.of(context).textTheme.headlineSmall,),
          Text("HELLO PAWAN",style: mTextstyle11(textColor: Colors.pink),),

        ],
        ),
    );
  }
}