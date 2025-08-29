import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(),
    );//
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}):super(key:key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text('flutter.container'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children:[
                          Container(
                          margin:EdgeInsets.only(right:12) ,
                          height: 202,
                          width: 600,
                          color: Colors.cyanAccent,
                        ),   Container(
                            margin:EdgeInsets.only(right:12) ,
                            height: 202,
                            width: 600,
                            color: Colors.pink,
                          ),   Container(
                            margin:EdgeInsets.only(right:12) ,
                            height: 202,
                            width: 600,
                            color: Colors.orange,
                          ),
                          Container(
                            margin:EdgeInsets.only(right:12) ,
                            height: 202,
                            width: 600,
                            color: Colors.red,
                          ),
                      
                      
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin:EdgeInsets.only(bottom:12) ,
                    height: 202,
                    width: 200,
                    color: Colors.pink,
                  ),
                  Container(
                    margin:EdgeInsets.only(bottom:12) ,
                    height: 202,
                    width: 200,
                    color: Colors.orange,
                  ),
                  Container(
                    margin:EdgeInsets.only(bottom:12) ,
                    height: 202,
                    width: 200,
                    color: Colors.blue,
                  ),
                  Container(
                    margin:EdgeInsets.only(bottom:12) ,
                    height: 202,
                    width: 200,
                    color: Colors.yellow,
                  ),
                  Container(
                    margin:EdgeInsets.only(bottom:12) ,
                    height: 202,
                    width: 200,
                    color: Colors.red,
                  ),
                ],
            ),
          ),
        )
    );//
  }
}