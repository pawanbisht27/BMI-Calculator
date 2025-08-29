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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful"),
      ),
      body: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: 200,
          maxHeight: 100,
          minHeight: 50,
          minWidth: 150,
        ),
        child: Text('HELLO PAWAN HELLO PAWAN HELLO PAWAN HELLO PAWAN HELLO PAWAN HELLO PAWAN HELLO PAWANHELLO PAWAN HELLO PAWAN HELLO PAWAN HELLO PAWAN HELLO PAWAN',
          style: TextStyle(
              fontSize: 21,
              overflow: TextOverflow.fade
          ),),
      )
    );
  }

}