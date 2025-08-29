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
          primarySwatch: Colors.pink,
        useMaterial3: true
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
  // var time = DateTime.now();
  @override
  Widget build(BuildContext context) {
    // var time = DateTime.now();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("DashBoardScreen"),
        ),
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Select Date & Time",
                style: TextStyle(fontSize: 25),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: () async{
                  DateTime? datePicked = await showDatePicker(
                      context: context,
                      initialDate:DateTime.now() ,
                      firstDate: DateTime(2023),
                      lastDate: DateTime(2025,12,31),
                  );
                  if(datePicked!=null){
                    print("Date Selected :${datePicked.day}"
                        "-${datePicked.month}"
                        "-${datePicked.year}");
                  }
                }, child: Text("Select Date")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: () async {
                  TimeOfDay? pickedTime= await showTimePicker(
                      context: context,
                      initialTime: TimeOfDay.now(),
                      initialEntryMode: TimePickerEntryMode.input
                  );
                  if(pickedTime!=null){
                    print("time selected : ${pickedTime.hour}:${pickedTime.minute}");
                  }
                }, child: Text("Select Time")),
              ),
            ],
          ),
        )
    );
  }

}