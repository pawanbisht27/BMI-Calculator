import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_basics/main.dart.';
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
          primarySwatch: Colors.orange
      ),
      home:DashBoardScreen(),
    );
  }
}
class DashBoardScreen extends StatelessWidget{
  var emailText=TextEditingController();
  var passText=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("DashBoardScreen"),
        ),
        body:Center(child: Container(
            width:300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  keyboardType: TextInputType.phone,
                  controller: emailText,
                  decoration: InputDecoration(
                    hintText:"Enter phone number" ,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                          color: Colors.red,
                        )
                    ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(
                            color: Colors.blue,
                          )
                      ),
                      disabledBorder:  OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                          color: Colors.blue,
                        )
                    ),
                    prefixIcon: Icon(Icons.phone,color: Colors.blue,),
                ),
                ),
                      Column(
                        children: [
                          Container(height: 15),
                        ],
                      ),
                TextField(
                  keyboardType: TextInputType.phone,
                  controller: passText,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText:"Enter password" ,
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                          color: Colors.red,
                        )
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                          color: Colors.blue,
                        )
                    ),
                    disabledBorder:  OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                          color: Colors.blue,
                        )
                    ),
                    suffixIcon: IconButton(
                       icon: Icon(Icons.remove_red_eye_outlined,color: Colors.blueAccent,),
                       onPressed: (){

                       },
                    ),
                    prefixIcon: Icon(Icons.keyboard,color: Colors.blue,),
                  ),
                ),
                SizedBox(height: 15),
                ElevatedButton(onPressed: (){
                String uPhoneNumber= emailText.text.toString();
                String uPassword = passText.text;
                print("phone number:$uPhoneNumber,password:$uPassword");
                },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white
                  ),
                    child: Text("Log in",),
                )
              ],
            ))
    ));
  }
}