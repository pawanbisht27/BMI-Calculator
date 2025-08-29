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
          title: Text("CustomWidget"),
        ),
        body:Container(
          child: Column(
            children: [

              Catitems(),
              Contact(),
              SubCatItem(),
              Bottoms()

            ],
          ),
        )
    );
  }

}
class Catitems extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return    Expanded(
     flex: 2,
     child: Container(
       color: Colors.yellow,
       child: ListView.builder(itemBuilder: (context,index)=>Padding(
         padding: const EdgeInsets.all(11.0),
         child: SizedBox(
           width: 150,
           child: CircleAvatar(
             backgroundColor:Colors.orange,
           ),
         ),
       ),
         itemCount: 10,scrollDirection: Axis.horizontal,
       ),
     ),
   );
  }

}
class Contact extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return    Expanded(
      flex: 3,
      child: Container(
        color: Colors.blue,
        child: ListView.builder(itemBuilder: (context,index)=>Padding(
          padding: const EdgeInsets.all(12.0),
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.purple,
            ),
            title:Text("Name"),
            subtitle: Text("Mob NO."),
            trailing: Icon(Icons.delete),
          ),
        )),
      ),
    );
  }

}
class SubCatItem extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return   Expanded(
      flex: 1,
      child: Container(
        color: Colors.redAccent,
        child: ListView.builder(itemBuilder: (context,index)=>Padding(
          padding: const EdgeInsets.all(11.0),
          child: SizedBox(
            width: 150,
            child: CircleAvatar(
              backgroundColor:Colors.orange,
            ),
          ),
        ),
          itemCount: 10,scrollDirection: Axis.horizontal,
        ),),
    );
  }

}
class Bottoms extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return      Expanded(
      flex: 2,
      child: Container(
        color: Colors.green,
        child: GridView.count(crossAxisCount: 3,
          children: [
          ],),
      ),
    );
  }

}