import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basics/card_widget.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder:(context)=> DashBoardScreen(), ));


    });
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Container(
       color: Colors.blue,
       child: Center(child: Text('PAWAN',
         style: TextStyle(fontSize: 34,
           fontWeight: FontWeight.w600,
           color: Colors.white,
         ),)),
     ),
   );
  }
}


