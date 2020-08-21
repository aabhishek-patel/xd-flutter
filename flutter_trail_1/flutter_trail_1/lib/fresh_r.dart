
import 'package:flutter/material.dart';

import 'package:characters/characters.dart';

class Fresh extends StatefulWidget {
  @override
  _FreshState createState() => _FreshState();
}

class _FreshState extends State<Fresh> {
  final List<String> sub = ["Aqwertyuiop", "B", "C"];

  String selectedsub = "Aqwertyuiop";


  //Name
  Widget _buildName(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          '5: छात्र / छात्रा का नाम *:',
          style: TextStyle(
            fontSize: 15.0,
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          height: 60.0,
          child: TextField(
            keyboardType: TextInputType.name,
            style: TextStyle(
              color: Colors.black,
              decorationStyle: TextDecorationStyle.dotted,
              decorationColor: Colors.red,
            ),
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              contentPadding: EdgeInsets.only(left:15.0,top:14.0),
            ),
          ),
        )
      ],
    );
  }

  //Father Name
  Widget _buildFatherName(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          '6: पिता का नाम *:',
          style: TextStyle(
            fontSize: 15.0,
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          height: 60.0,
          child: TextField(
            keyboardType: TextInputType.name,
            style: TextStyle(
              color: Colors.black,
              decorationStyle: TextDecorationStyle.dotted,
              decorationColor: Colors.red,
            ),
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              contentPadding: EdgeInsets.only(left:15.0,top:14.0),
            ),
          ),
        )
      ],
    );
  }

  //Mother Name
  Widget _buildMotherName(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          '7: माता का नाम *:',
          style: TextStyle(
            fontSize: 15.0,
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          height: 60.0,
          child: TextField(
            keyboardType: TextInputType.name,
            style: TextStyle(
              color: Colors.black,
              decorationStyle: TextDecorationStyle.dotted,
              decorationColor: Colors.red,
            ),
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              contentPadding: EdgeInsets.only(left:15.0,top:14.0),
            ),
          ),
        )
      ],
    );
  }

  //Dob
  Widget _buildDob(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          '8: सक्षम स्तर से निर्गत जन्म प्रमाण पत्र में अंकित जन्मतिथि (dd/mm/yyyy) *:',
          style: TextStyle(
            fontSize: 15.0,
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          height: 60.0,
          child: TextField(
            keyboardType: TextInputType.datetime,
            style: TextStyle(
              color: Colors.black,
              decorationStyle: TextDecorationStyle.dotted,
              decorationColor: Colors.red,
            ),
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              contentPadding: EdgeInsets.only(left:15.0,top:14.0),
            ),
          ),
        )
      ],
    );
  }

  //_build8School Name
  Widget _build8School(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          '11: कक्षा-8 में अध्ययन करने वाले विद्यालय का नाम *:',
          style: TextStyle(
            fontSize: 15.0,
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          height: 60.0,
          child: TextField(
            keyboardType: TextInputType.name,
            style: TextStyle(
              color: Colors.black,
              decorationStyle: TextDecorationStyle.dotted,
              decorationColor: Colors.red,
            ),
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              contentPadding: EdgeInsets.only(left:15.0,top:14.0),
            ),
          ),
        )
      ],
    );
  }

  //_buildphoneNo
  Widget _buildphoneNo(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          '14: मोबाइल नं0 (आधार नंबर से लिंक) *:',
          style: TextStyle(
            fontSize: 15.0,
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          height: 60.0,
          child: TextField(
            keyboardType: TextInputType.phone,
            style: TextStyle(
              color: Colors.black,
              decorationStyle: TextDecorationStyle.dotted,
              decorationColor: Colors.red,
            ),
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              contentPadding: EdgeInsets.only(left:15.0,top:14.0),
            ),
          ),
        )
      ],
    );
  }

  //_buildtelephoneNo
  Widget _buildtelephoneNo(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          '15: दूरभाष नं0.(एस टी डी कोड सहित):',
          style: TextStyle(
            fontSize: 15.0,
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          height: 60.0,
          child: TextField(
            keyboardType: TextInputType.phone,
            style: TextStyle(
              color: Colors.black,
              decorationStyle: TextDecorationStyle.dotted,
              decorationColor: Colors.red,
            ),
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              contentPadding: EdgeInsets.only(left:15.0,top:14.0),
            ),
          ),
        )
      ],
    );
  }

  //_buildemail
  Widget _buildemail(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          '16: ईमेल :',
          style: TextStyle(
            fontSize: 15.0,
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          height: 60.0,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.black,
              decorationStyle: TextDecorationStyle.dotted,
              decorationColor: Colors.red,
            ),
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              contentPadding: EdgeInsets.only(left:15.0,top:14.0),
            ),
          ),
        )
      ],
    );
  }

  //_buildpassword
  Widget _buildpassword(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          '17: स्वनिर्मित पासवर्ड डाले (8-12 अंको/अक्षरों का) *:',
          style: TextStyle(
            fontSize: 15.0,
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          height: 60.0,
          child: TextField(
            obscureText: true,
            keyboardType: TextInputType.datetime,
            style: TextStyle(
              color: Colors.black,
              decorationStyle: TextDecorationStyle.dotted,
              decorationColor: Colors.red,
            ),
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              contentPadding: EdgeInsets.only(left:15.0 ,top:20.0),
            ),
          ),
        )
      ],
    );
  }

  //_buildcfrm_password
  Widget _buildcfrm_password(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          '18: स्वनिर्मित पासवर्ड कन्फर्म करे (स्वनिर्मित पासवर्ड सुरक्षित जगह नोट कर लें)*:',
          style: TextStyle(
            fontSize: 15.0,
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',

          ),
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          height: 60.0,
          child: TextField(
            obscureText: true,
            keyboardType: TextInputType.datetime,
            style: TextStyle(
              color: Colors.black,
              decorationStyle: TextDecorationStyle.dotted,
              decorationColor: Colors.red,
            ),
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              contentPadding: EdgeInsets.only(left:15.0,top:14.0),
            ),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    //phone No linked with AADHAR
    final menu = DropdownButton<String>(
      value: selectedsub,
      itemHeight: 60.0,
      onChanged: (value) {
        setState(() {
          selectedsub = value;
        });
      },
      items: sub.map<DropdownMenuItem<String>>((value) {
        return DropdownMenuItem(
          child: Text(value),
          value: value,
        );
      }).toList(),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'उ0प्र0 में कक्षा 9-10 सत्र 2020-21 में अध्ययनरत छात्र/छात्राओं के लिए ऑनलाइन रजिस्ट्रेशन फॉर्म',
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
          /*Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF73AEF5),
                Color(0xFF61A4F1),
                Color(0xFF478DE0),
                Color(0xFF398AE5),
              ],
              stops: [0.1, 0.4, 0.7, 0.9],
            )),
          ),*/
          Container(
            height: double.infinity,
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(
                horizontal: 40.0,
                vertical: 20.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'उ0प्र0 में कक्षा 9-10 सत्र 2020-21 में अध्ययनरत छात्र/छात्राओं के लिए ऑनलाइन रजिस्ट्रेशन फॉर्म',
                    style: TextStyle(
                      color: Colors.blue,
                      fontFamily: 'OpenSans',
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 20.0),
                  _buildName(),
                  SizedBox(height: 10.0,),
                  _buildFatherName(),
                  SizedBox(height: 10.0,),
                  _buildMotherName(),
                  SizedBox(height: 10.0,),
                  _buildDob(),
                  SizedBox(height: 10.0,),
                  _build8School(),
                  SizedBox(height: 10.0,),
                  _buildphoneNo(),
                  SizedBox(height: 10.0,),
                  _buildtelephoneNo(),
                  SizedBox(height: 10.0,),
                  _buildemail(),
                  SizedBox(height: 10.0,),
                  _buildpassword(),
                  SizedBox(height: 10.0,),
                  _buildcfrm_password(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
