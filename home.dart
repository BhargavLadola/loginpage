import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:splashscreen/splashscreen.dart';

class Myhome extends StatefulWidget {
  @override
  _MyhomeState createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> {

  GlobalKey<FormState> keys = new GlobalKey();
  String datavalue,mobile;
  bool validate = true;
  final name = TextEditingController();
  void initState() {SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
   // pr = new ProgressDialog(context,type: ProgressDialogType.Normal);
    // TODO: implement initState
    super.initState();
  }
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:Column(children: <Widget>[
          Container(


            decoration: BoxDecoration(
              color: Colors.lightBlue,
             borderRadius: BorderRadius.only(bottomLeft: Radius.circular(60.0))),
            padding: EdgeInsets.all(10),
            height: 250,),
          Form(
            autovalidate: validate,
            key: keys,
            child: data(),),
          //child:  Image(image: AssetImage("assets/a.jpg"),fit: BoxFit.cover,height: 5,width: 5,),),
          // padding: EdgeInsets.all(50) ),
        ],),
      ),
    );
  }
  Widget data(){
    return(Column(children: <Widget>[
      SizedBox(height: 20,),
     // TextFormField(decoration: InputDecoration(border: InputBorder.none),),
      Padding(padding: EdgeInsets.all(21),child:
      TextFormField(maxLines: 6,
          decoration:  InputDecoration(labelText:'Enter Email',prefixIcon: Icon(Icons.email),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
          keyboardType: TextInputType.emailAddress,
          onSaved: (String val) {
            name.text = val;
          },
          validator: validateEmail),),
    //  TextFormField(decoration: InputDecoration(border: InputBorder.none),),
      TextFormField(maxLength: 10,
        decoration: InputDecoration(labelText: 'Mobile',prefixIcon: Icon(Icons.call),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
        keyboardType: TextInputType.number,
        validator: validateMobile,
        onSaved: (String val) {
          mobile = val;
        },),
      RaisedButton(child: Text("submit"),textTheme: ButtonTextTheme.accent,
        splashColor: Colors.lightBlue,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        onPressed:(){
        },),
    ],));
  }
}

String validateEmail(String value) {
  Pattern pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regex = new RegExp(pattern);
  if (!regex.hasMatch(value))
    return 'Enter Valid Email';
  else
    return null;
}

String validateMobile(String value) {
  if (value.length != 10)
    return 'Mobile Number must be of 10 digit';
  else
    return null;
}

/*void submit() {
  if (keys.currentState.validate()) {
    keys.currentState.save();
    print("success");
  } else {
    print("fail");
  }
}*/