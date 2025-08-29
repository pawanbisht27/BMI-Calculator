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
      body: Center(
            child: CircleAvatar(
              child: Container(
                width: 60,
                height: 60,
                child:Column(
                 children: [
                   Container(
                     width: 50,
                       height: 35,
                       child: Image.asset("assets/images/user.jpg")),
                   Text("Name")
                 ],
                ),
               ), //Text("name" ,style:TextStyle(color: Colors.purple,fontSize: 30),),
              // backgroundImage: AssetImage("assets/images/user.jpg"),
              backgroundColor: Colors.orange,
              maxRadius: 60,
            ),
          )
      );
  }

}