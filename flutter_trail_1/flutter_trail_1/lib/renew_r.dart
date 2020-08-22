import 'package:flutter/material.dart';

class Renew extends StatefulWidget {
  @override
  _RenewState createState() => _RenewState();
}

class _RenewState extends State<Renew> {


  //_buildregistration
  Widget _buildregistration() {
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
              labelText: "सत्र - 2019-20 की रजिस्ट्रेशन संख्या भरें *:",
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black)),
              contentPadding: EdgeInsets.only(left: 15.0, top: 14.0),
              border: const OutlineInputBorder(),
              labelStyle: new TextStyle(color: Colors.black),
            ),
          ),
        )
      ],
    );
  }

  //_builddob
  Widget _builddob() {
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
              labelText: "जन्म तिथि भरें *:",
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black)),
              contentPadding: EdgeInsets.only(left: 15.0, top: 14.0),
              border: const OutlineInputBorder(),
              labelStyle: new TextStyle(color: Colors.black),
            ),
          ),
        )
      ],
    );
  }

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
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black)
              ),
              contentPadding: EdgeInsets.only(left: 15.0, top: 14.0),
              border: const OutlineInputBorder(),
              labelStyle: new TextStyle(color: Colors.black),
            ),
          ),
        )
      ],
    );
  }

  //submit
  Widget _buildSubmit() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      width: 150,
      child: RaisedButton(
        elevation: 5.0,
        onPressed: () => print('Submit Button Pressed'),
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        color: Colors.blue,
        child: Text(
          'SUBMIT',
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 1.5,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
      ),
    );
  }

  //forgot
  Widget _buildForgotPassword() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5.0),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5.0,
        onPressed: () {
        },
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        color: Colors.blue,
        child: Text(
          'Forgot Password',
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 1.0,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
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

        body: Stack(
          children: <Widget>[
            Container(
              height: double.infinity,
              child: SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(
                  horizontal: 40.0,
                  vertical: 20.0,
                ),
                child: Column(
                  children: <Widget>[
                    Text(
                      'पूर्वदशम छात्रवृति एवं शुल्क प्रतिपूर्ति नवीनीकरण हेतु रजिस्ट्रेशन सत्र - 2020-21',
                      style: TextStyle(
                        color: Colors.blue,
                        fontFamily: 'OpenSans',
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10.0,),
                    _buildregistration(),
                    SizedBox(height: 10.0,),
                    _builddob(),
                    SizedBox(height: 10.0,),
                    _buildphoneNo(),
                    SizedBox(height: 10.0),
                    _buildSubmit(),
                    SizedBox(height: 10.0),
                    _buildForgotPassword(),
                  ],
                ),
              ),
            )
          ],
        ),
    );
  }
}
