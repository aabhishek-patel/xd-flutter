import 'package:flutter/material.dart';
import 'package:flutter_trail_1/fresh_r.dart';
import 'package:flutter_trail_1/renew_r.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Navigator", home: FirstPage());
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final renew = RaisedButton(
      child: Text("Renew", style: TextStyle(color: Colors.black)),
      color: Colors.blue,
      hoverColor: Colors.lightBlueAccent,
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Renew()));
      },
    );

    final newR = RaisedButton(
      child: Text("New", style: TextStyle(color: Colors.black)),
      color: Colors.blue,
      hoverColor: Colors.lightBlueAccent,
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Fresh()));

      },
    );
    return Scaffold(
      appBar: AppBar(
        title: Text("First Page"),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: ListView(children: <Widget>[
          Divider(),
          renew,
          Divider(),
          newR,
          /*child: RaisedButton(
          child: Text("Second Page"),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => SecondPage()));
          },
        ),*/
        ]),
      ),
    );
  }
}
