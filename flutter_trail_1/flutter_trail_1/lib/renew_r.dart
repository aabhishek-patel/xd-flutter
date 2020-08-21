import 'package:flutter/material.dart';

class Renew extends StatefulWidget {
  @override
  _RenewState createState() => _RenewState();
}

class _RenewState extends State<Renew> {
  //_buildcfrm_password
  Widget _buildphoneNo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          height: 50.0,
          child: TextField(
            obscureText: true,
            keyboardType: TextInputType.datetime,
            style: TextStyle(
              color: Colors.black,
              decorationStyle: TextDecorationStyle.dotted,
              decorationColor: Colors.red,
            ),
            decoration: InputDecoration(
              labelText: "अपना मोबाइल नं0 भरें (आधार नंबर से लिंक) *:",
              border: OutlineInputBorder(),
              contentPadding: EdgeInsets.only(left: 15.0, top: 14.0),
            ),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    //Registration Number
    final registration = TextField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        labelText: "सत्र - 2019-20 की रजिस्ट्रेशन संख्या भरें-*",
        border: OutlineInputBorder(),
        contentPadding: EdgeInsets.only(left: 15.0, top: 15.0),
      ),
    );

    //Dob
    final dob = TextField(
      keyboardType: TextInputType.datetime,
      decoration: InputDecoration(
        labelText: "जन्म तिथि भरें:*",
        border: OutlineInputBorder(),
        contentPadding: EdgeInsets.only(left: 15.0, top: 15.0),
      ),
    );



    final submit = RaisedButton(
      child: Text("Submit", style: TextStyle(color: Colors.black)),
      color: Colors.blue,
      hoverColor: Colors.lightBlueAccent,
      onPressed: () {},
    );
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "पूर्वदशम छात्रवृति एवं शुल्क प्रतिपूर्ति नवीनीकरण हेतु रजिस्ट्रेशन सत्र - 2020-21",
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'OpenSans',
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Container(
          margin: EdgeInsets.only(left: 30.0, right: 30.0,),
          child: ListView(
            children: <Widget>[
              Divider(),
              registration,
              Divider(),
              dob,
              SizedBox(height: 10.0,),
              _buildphoneNo(),
              Divider(),
              submit,
            ],
          ),
        )
    );
  }
}
