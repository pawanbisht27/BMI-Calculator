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

  var wtController = TextEditingController();
  var ftController = TextEditingController();
  var inController = TextEditingController();

  var result = "";
  var bgColor = Colors.indigo.shade100;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("B M I APP"),
      ),
      body:Container(
        decoration: BoxDecoration(
      gradient: LinearGradient  (
      colors: [
      Color(0xff5ee7df),
        Color(0xffb490ca),
        ],

        begin: FractionalOffset(1.0, 0.5),
        end: FractionalOffset(0.0, 0.5),
    )
    ),
        child: Center(
          child: Container(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Text("BMI",style: TextStyle(
                    fontSize: 35,
                    fontWeight:FontWeight.w500 ),),

                SizedBox(height: 21,),

                TextField(
                  controller: wtController,
                  decoration: InputDecoration(
                    label: Text("ENTER YOUR WEIGHT (in Kg's)"),
                    prefixIcon: Icon(Icons.line_weight)
                  ),
                  keyboardType: TextInputType.number,
                ),

                SizedBox(height: 11,),

                TextField(
                  controller: ftController,
                  decoration: InputDecoration(
                      label: Text("ENTER YOUR HEIGHT (in feet)"),
                      prefixIcon: Icon(Icons.height)
                  ),
                  keyboardType: TextInputType.number,
                ),

                SizedBox(height: 11,),

                TextField(
                  controller: inController,
                  decoration: InputDecoration(
                      label: Text("ENTER YOUR HEIGHT (in inch)"),
                      prefixIcon: Icon(Icons.height)
                  ),
                  keyboardType: TextInputType.number,
                ),

                SizedBox(height: 15,),

                ElevatedButton(onPressed: () {
                  var wt = wtController.text.toString();
                  var ft = ftController.text.toString();
                  var inch = inController.text.toString();

                  if (wt.trim().isNotEmpty && ft.trim().isNotEmpty && inch.trim().isNotEmpty) {
                    // BMI Calculation

                    var iWt = int.parse(wt);
                    var iFt = int.parse(ft);
                    var iInch = int.parse(inch);

                    var tInch = (iFt*12) + iInch; //total inches
                    var tCm = tInch*2.54; //total cm
                    var tMt= tCm/100; //total miter

                    var bmi = iWt/(tMt*tMt); //final  bmi formula

                    var msg = "";

                    if(bmi>25){
                      msg ="YOU ARE OVERWEIGHT";
                      bgColor = Colors.orange.shade100;
                    } else if(bmi<18){
                      msg = "YOU ARE UNDERWEIGHT";
                      bgColor = Colors.red.shade200;

                    } else {
                      msg ="YOU ARE HEALTHY";
                      bgColor = Colors.green.shade200;

                    }

                    setState(() {
                      result = "$msg \n YOUR BMI IS : ${bmi.toStringAsFixed(2)}";
                    });

                  } else {
                    setState(() {

                      result = "PLEASE FILL THE ALL REQUIRED OPTIONS.";
                    });

                  }
                },
                    child: Text("CALCULATE")),

                SizedBox(height: 12,),

                Text(result, style:
                TextStyle(fontSize: 20,color: Colors.red,
                    fontWeight: FontWeight.w500),)

              ],
            ),
          ),
        ),
      )
    );
  }
}