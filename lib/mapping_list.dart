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
  var arrData=[
    {
      'name':"AKASH",
      'MOB NO.':'7328732872',
      "unread":'2'
    },
    {
      'name':"PAWAN",
      'MOB NO.':'7328732565',
      "unread":'7'
    },
    {
      'name':"SACHIN",
      'MOB NO.':'7399222872',
      "unread":'5'
    },
    {
      'name':"NITIN",
      'MOB NO.':'9998732872',
      "unread":'2'
    },
    {
      'name':"SAURABH",
      'MOB NO.':'9627363287',
      "unread":'3'
    },
    {
      'name':"MADHAV",
      'MOB NO.':'6328732872',
      "unread":'6'
    },
    {
      'name':"LUCKY",
      'MOB NO.':'9128732872',
      "unread":'2'
    },
    {
      'name':"SUNDER",
      'MOB NO.':'9086332872',
      "unread":'1'
    },
    {
      'name':"VANSH",
      'MOB NO.':'9228732872',
      "unread":'5'
    },
    {
      'name':"BHAVESH",
      'MOB NO.':'7376532872',
      "unread":'2'
    },
    {
      'name':"RITESH",
      'MOB NO.':'8635873272',
      "unread":'4'
    },

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful"),
      ),
      body: Container(
        child: ListView(
          children : arrData.map((value)=>
              ListTile(
                leading: Icon(Icons.account_circle),
                title:Text(value['name'].toString()) ,
                subtitle: Text(value['MOB NO.'].toString()),
                trailing: CircleAvatar(
                    radius: 11,
                    backgroundColor: Colors.green,
                    child: Text(value['unread'].toString())),
              )
          ).toList()
        ),
      ));
  }

}