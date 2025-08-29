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

        primarySwatch: Colors.pink,
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
    var arrNames = ["pawan", "nitin", 'saurabh', 'madhav', 'sachin', 'yogesh'];
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text('PAWAN BISHT'),
        ),
        body: ListView.separated(itemBuilder: (context, index) {
          return ListTile(
            leading:Text("${index+1}") ,
            title:Text(arrNames[index]),
            subtitle:Text("number") ,
            trailing: Icon(Icons.add),
          );
          //Text(arrNames[index],style: TextStyle(fontSize:22,fontWeight: FontWeight.w500 ),);
        },
          itemCount: arrNames.length,
          separatorBuilder: (context, index) {
            return Divider(height: 20, thickness: 1,);
          },
        )
          // body: ListView.builder(itemBuilder: (context, index) {
          //   return Text(arrNames[index],style: TextStyle(fontSize:22,fontWeight: FontWeight.w500 ),);
          // },
          //   itemCount: arrNames.length,
          //   itemExtent: 130,
         //Center(
      //   child: ListView(
      //     scrollDirection: Axis.vertical,
      //     reverse: true,
      //     children: [
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Text("one",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500),),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Text("two",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500),),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Text("three",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500),),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Text("four",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500),),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Text("five",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500),),
      //       ),
      //
      //     ],
      //   ),
      // )
    ); //
  }
}