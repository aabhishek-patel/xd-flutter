import 'package:flutter/material.dart';



class Fresh extends StatefulWidget {
  @override
  _FreshState createState() => _FreshState();
}

class _FreshState extends State<Fresh> {

  //zilla
  var selectedTypeZilla;
  List<String> _dist = <String>["Aqwertyuiop", "B", "C"];

  //college
  var selectedTypeCollege;
  List<String> _collegeName = <String>["GU", "IMS", "C"];

  //caste
  var selectedTypeCaste;
  List<String> _casteName = <String>["अनुसूचित जाति", "अनुसूचित जनजाति", "सामान्य वर्ग",];

  //college
  var selectedTypeReligion;
  List<String> _religionName = <String>["HINDU",];

  //gender
  var selectedTypeGender;
  List<String> _genderNAme = <String>["MALE","FEMALE","TRANSGENDER",];

  //class8
  var selectedTypeClass8;
  List<String> _class8YearName = <String>["2020","2019","2018","2017","2016","2015", "2014","2013","2012",
    "2011","2010","2009","2008","2007","2006","2005","2004","2003","2002","2001","2001"];

  //zilla
  Widget _zilla(){
   return Column(
     crossAxisAlignment: CrossAxisAlignment.start,
     children: <Widget>[
     Text(
     '1: जिला (जहाँ छात्र / छात्रा अध्ययनरत है) *:',
     style: TextStyle(
       fontSize: 15.0,
       color: Colors.black,
       fontWeight: FontWeight.bold,
       fontFamily: 'OpenSans',
     ),
   ),
    SizedBox(height: 10.0),
     Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: 50.0,
      child: DropdownButton(
        items: _dist.map(
                (value) => DropdownMenuItem(
              child: Text(value,
                style: TextStyle(color: Colors.black),
              ),
              value: value,
            )).toList(),
        onChanged: (selectedAccountType){
          setState(() {
            selectedTypeZilla = selectedAccountType;
          });
        },
        value: selectedTypeZilla,
        isExpanded: false,
        hint: Text('  Select   your    state',
          style: TextStyle(color: Colors.black),
        ),

      ),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(5)),
     )
     ],
    );
  }

  //college
  Widget _college(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          '2: शिक्षण संस्थान *:',
          style: TextStyle(
            fontSize: 15.0,
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.center,
          width: double.infinity,
          height: 50.0,
          child: DropdownButton(
            items: _collegeName.map(
                    (value) => DropdownMenuItem(
                  child: Text(value,
                    style: TextStyle(color: Colors.black),
                  ),
                  value: value,
                )).toList(),
            onChanged: (selectedAccountType){
              setState(() {
                selectedTypeCollege = selectedAccountType;
              });
            },
            value: selectedTypeCollege,
            isExpanded: false,
            hint: Text('  Select   your    College',
              style: TextStyle(color: Colors.black),
            ),

          ),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(5)),
        )
      ],
    );
  }

  //caste
  Widget _caste(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          '3: वर्ग / जाति समूह *:',
          style: TextStyle(
            fontSize: 15.0,
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.center,
          width: double.infinity,
          height: 50.0,
          child: DropdownButton(
            items: _casteName.map(
                    (value) => DropdownMenuItem(
                  child: Text(value,
                    style: TextStyle(color: Colors.black),
                  ),
                  value: value,
                )).toList(),
            onChanged: (selectedAccountType){
              setState(() {
                selectedTypeCaste = selectedAccountType;
              });
            },
            value: selectedTypeCaste,
            isExpanded: false,
            hint: Text('  Select  your  Caste  Group',
              style: TextStyle(color: Colors.black),
            ),

          ),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(5)),
        )
      ],
    );
  }

  //religion
  Widget _religion(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          '4: धर्म *:',
          style: TextStyle(
            fontSize: 15.0,
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.center,
          width: double.infinity,
          height: 50.0,
          child: DropdownButton(
            items: _religionName.map(
                    (value) => DropdownMenuItem(
                  child: Text(value,
                    style: TextStyle(color: Colors.black),
                  ),
                  value: value,
                )).toList(),
            onChanged: (selectedAccountType){
              setState(() {
                selectedTypeReligion = selectedAccountType;
              });
            },
            value: selectedTypeReligion,
            isExpanded: false,
            hint: Text('  Select  your  Religion',
              style: TextStyle(color: Colors.black),
            ),

          ),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(5)),
        )
      ],
    );
  }

  //Name
  Widget _buildName() {
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
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black)
              ),
              contentPadding: EdgeInsets.only(left: 15.0, top: 20.0),
              border: const OutlineInputBorder(),
              labelStyle: new TextStyle(color: Colors.black),
            ),
          ),
        )
      ],
    );
  }

  //Father Name
  Widget _buildFatherName() {
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
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black)
              ),
              contentPadding: EdgeInsets.only(left: 15.0, top: 20.0),
              border: const OutlineInputBorder(),
              labelStyle: new TextStyle(color: Colors.black),
            ),
          ),
        )
      ],
    );
  }

  //Mother Name
  Widget _buildMotherName() {
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
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black)
              ),
              contentPadding: EdgeInsets.only(left: 15.0, top: 20.0),
              border: const OutlineInputBorder(),
              labelStyle: new TextStyle(color: Colors.black),
            ),
          ),
        )
      ],
    );
  }

  //Dob
  Widget _buildDob() {
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
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black)
              ),
              contentPadding: EdgeInsets.only(left: 15.0, top: 20.0),
              border: const OutlineInputBorder(),
              labelStyle: new TextStyle(color: Colors.black),
            ),
          ),
        )
      ],
    );
  }

  //gender
  Widget _gender(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          '9: लिंग *:',
          style: TextStyle(
            fontSize: 15.0,
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.center,
          width: double.infinity,
          height: 50.0,
          child: DropdownButton(
            items: _genderNAme.map(
                    (value) => DropdownMenuItem(
                  child: Text(value,
                    style: TextStyle(color: Colors.black),
                  ),
                  value: value,
                )).toList(),
            onChanged: (selectedAccountType){
              setState(() {
                selectedTypeGender = selectedAccountType;
              });
            },
            value: selectedTypeGender,
            isExpanded: false,
            hint: Text('  Select  your  Gender',
              style: TextStyle(color: Colors.black),
            ),

          ),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(5)),
        )
      ],
    );
  }

  //classs8
  Widget _class8Year(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          '10:कक्षा-8 उत्तीर्ण करने का वर्ष *:',
          style: TextStyle(
            fontSize: 15.0,
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.center,
          width: double.infinity,
          height: 50.0,
          child: DropdownButton(
            elevation: 5,
            items: _class8YearName.map(
                    (value) => DropdownMenuItem(
                  child: Text(value,
                    style: TextStyle(color: Colors.black),
                  ),
                  value: value,
                )).toList(),
            onChanged: (selectedAccountType){
              setState(() {
                selectedTypeClass8 = selectedAccountType;
              });
            },
            value: selectedTypeClass8,
            isExpanded: false,
            hint: Text('Select Class 8 Passing Year',
              style: TextStyle(color: Colors.black),
            ),

          ),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(5)),
        )
      ],
    );
  }

  //_build8School Name
  Widget _build8School() {
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
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black)
              ),
              contentPadding: EdgeInsets.only(left: 15.0, top: 20.0),
              border: const OutlineInputBorder(),
              labelStyle: new TextStyle(color: Colors.black),
            ),
          ),
        )
      ],
    );
  }

  //_buildphoneNo
  Widget _buildphoneNo() {
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
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black)
              ),
              contentPadding: EdgeInsets.only(left: 15.0, top: 20.0),
              border: const OutlineInputBorder(),
              labelStyle: new TextStyle(color: Colors.black),
            ),
          ),
        )
      ],
    );
  }

  //_buildtelephoneNo
  Widget _buildtelephoneNo() {
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
                decorationColor: Colors.red),
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black)
              ),
              contentPadding: EdgeInsets.only(left: 15.0, top: 20.0),
              border: const OutlineInputBorder(),
              labelStyle: new TextStyle(color: Colors.black),
            ),
          ),
        )
      ],
    );
  }

  //_buildemail
  Widget _buildemail() {
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
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black)
              ),
              contentPadding: EdgeInsets.only(left: 15.0, top: 20.0),
              border: const OutlineInputBorder(),
              labelStyle: new TextStyle(color: Colors.black),
            ),
          ),
        )
      ],
    );
  }

  //_buildpassword
  Widget _buildpassword() {
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
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black)
              ),
              contentPadding: EdgeInsets.only(left: 15.0, top: 20.0),
              border: const OutlineInputBorder(),
              labelStyle: new TextStyle(color: Colors.black),
            ),
          ),
        )
      ],
    );
  }

  //_buildcfrm_password
  Widget _buildcfrm_password() {
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

  @override
  Widget build(BuildContext context) {

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
                  SizedBox(height: 10.0),
                  _zilla(),
                  SizedBox(height: 10.0),
                  _college(),
                  SizedBox(height: 10.0),
                  _caste(),
                  SizedBox(height: 10.0),
                  _religion(),
                  SizedBox(height: 10.0),
                  _buildName(),
                  SizedBox(height: 10.0,),
                  _buildFatherName(),
                  SizedBox(height: 10.0,),
                  _buildMotherName(),
                  SizedBox(height: 10.0,),
                  _buildDob(),
                  SizedBox(height: 10.0,),
                  _gender(),
                  SizedBox(height: 10.0,),
                  _class8Year(),
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
                  SizedBox(height: 10.0,),
                  _buildSubmit(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
