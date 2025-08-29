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
        body:Container(
          height: 800,
          width: 800,
        child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, // this is a more type
          // mainAxisAlignment: MainAxisAlignment.center,//letter in the center
          crossAxisAlignment:CrossAxisAlignment.end,
           children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                children:[
                  ElevatedButton(onPressed: (){},child:Text("button 1")
                  ),
                  ElevatedButton(onPressed: (){}, child:Text("button 2")),
                ],),
              Text("A1",style: TextStyle(fontSize: 40),),
              Text("B2",style: TextStyle(fontSize: 40),),
              Text("C3",style: TextStyle(fontSize: 40),),
              Text("D4",style: TextStyle(fontSize: 40),),
              Text("E5",style: TextStyle(fontSize: 40),),
                 ],
    ),
            Text("A",style: TextStyle(fontSize: 40),),
            Text("B",style: TextStyle(fontSize: 40),),
            Text("C",style: TextStyle(fontSize: 40),),
            Text("D",style: TextStyle(fontSize: 40),),
            Text("E",style: TextStyle(fontSize: 40),),

          ],
    )
        )
    );
  }
}