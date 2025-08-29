import 'package:flutter/material.dart';
//import 'package:flutter_basics/introPage.dart';
import 'package:flutter_basics/profile_screen.dart';
//import 'package:flutter_basics/splash_screen.dart';

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
      home: MyHomePage(),
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
  var nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Stateful"),
        ),
        body: Center(
          child: Container(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("DASHBOARD SCREEN", style: TextStyle(
                  fontSize: 25,
                ),),
                SizedBox(height: 11,),

                TextField(
                  controller: nameController,
                ),

                ElevatedButton(onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) =>
                          ProfileScreen(nameController.text.toString()),));
                }, child: Text('MY PROFILE'))
              ],
            ),
            color: Colors.white,
          ),
        )
    );
  }
}