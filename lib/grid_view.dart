import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_basics/card_widget.dart';

void main (){
  runApp(StartApp());
}

class StartApp extends StatelessWidget{
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
class DashBoardScreen extends StatefulWidget{
  const DashBoardScreen({Key? key}):super (key: key);

  @override
  State<DashBoardScreen> createState() =>_DashBoardScreenState();
}
class _DashBoardScreenState extends State<DashBoardScreen>{
  @override
  Widget build(BuildContext context) {
    var arrColors = [Colors.blue,
    Colors.indigoAccent,
    Colors.orange,
    Colors.red,
    Colors.blueGrey,
      Colors.purple,
    Colors.pink,
    Colors.yellow,
    ];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("DashBoardScreen"),
        ),
        body:GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 100,
            crossAxisSpacing: 10,
            mainAxisSpacing: 11,
           ),
          itemBuilder: (context, index) {
          return Container(
            color: arrColors[index],
          );
        },
        itemCount:arrColors.length ,)












        //Column(
        //   children: [
        //     Container(
        //       height: 200,
        //       child: GridView.count(crossAxisCount: 4,
        //       crossAxisSpacing: 20,
        //       mainAxisSpacing: 20,
        //       children: [
        //         Container(color: arrColors[0],),
        //         Container(color: arrColors[1],),
        //         Container(color: arrColors[2],),
        //         Container(color: arrColors[3],),
        //         Container(color: arrColors[4],),
        //         Container(color: arrColors[5],),
        //         Container(color: arrColors[6],),
        //         Container(color: arrColors[7],),
        //       ],),
        //     ),
        //   //
        //   //
        //   //   GridView.extent(maxCrossAxisExtent: 100,
        //   //     crossAxisSpacing: 20,
        //   //     mainAxisSpacing: 20,
        //   //     children: [
        //   //       Container(color: arrColors[0],),
        //   //       Container(color: arrColors[1],),
        //   //       Container(color: arrColors[2],),
        //   //       Container(color: arrColors[3],),
        //   //       Container(color: arrColors[4],),
        //   //       Container(color: arrColors[5],),
        //   //       Container(color: arrColors[6],),
        //   //       Container(color: arrColors[7],),
        //   //     ],
        //   //   ),
        //   ],
        // )
    );
  }

}