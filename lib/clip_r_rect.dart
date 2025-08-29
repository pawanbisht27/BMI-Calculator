import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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

          title: Text('Clipper'),
        ),
        body: Center(
            child:ClipRRect(
              borderRadius: BorderRadius.circular(22),
              child: Image.asset("assets/images/view.jpg",width: 400,height: 200,fit: BoxFit.fill,),
            ),
            )
    );
  }
}