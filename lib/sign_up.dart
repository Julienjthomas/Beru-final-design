//Sign Up  page

import 'package:beru_final/home_page.dart';
import 'package:flutter/material.dart';
import 'package:styled_text/styled_text.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          color: Colors.grey,
        ),
        backgroundColor: Colors.white,
        elevation: 1.0,
      ),
      body: Column(
        children: [
          AspectRatio(aspectRatio: 9.0),
          AspectRatio(
              aspectRatio: 4.0,
              child: Image(
                image: AssetImage('images/logo.png'),
              )),
          AspectRatio(aspectRatio: 50.0),
          StyledText(
            text:
                '<lato>Join <bold> Beru </bold> , for a healthier you  </lato>',
            styles: {
              'lato': GoogleFonts.lato(
                fontSize: 28.0,
              ),
              'bold':
                  GoogleFonts.lato(fontSize: 30.0, fontWeight: FontWeight.bold),
            },
          ),
          AspectRatio(aspectRatio: 10.0),
          TextWidget(icon: Icons.person_outline,hintTest: 'NAME',),
          AspectRatio(aspectRatio: 10.0),
          TextWidget(icon: Icons.email_outlined,hintTest: 'EMAIL',),
          AspectRatio(aspectRatio: 10.0),
          TextWidget(icon: Icons.lock_outline,hintTest: 'PASSWORD',),
          AspectRatio(aspectRatio: 10.0),
          TextWidget(icon: Icons.lock_outline,hintTest: 'CONFIRM PASSWORD',),
          AspectRatio(aspectRatio: 10.0),
          TextWidget(icon: Icons.phone_android_outlined,hintTest: 'CONFIRM PASSWORD',),
          AspectRatio(aspectRatio: 10.0),
          Container(
            height: 40,
            width: 200.0,
            child: RaisedButton(
              child: Text(
                "Create Account",
                style: GoogleFonts.openSans(fontSize: 18.0,color: Colors.white,fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return HomePage();
                }),);
              },
              color: Color(0xff2BC48B),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(08.0),
              ),
            ),
          ),
          AspectRatio(aspectRatio: 30.0),
          Text('Already a member? Log in',style: TextStyle(decoration: TextDecoration.underline,),),
          Expanded(
            flex:1,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset('images/f.png',fit:BoxFit.scaleDown,scale: 20,),
                AspectRatio(aspectRatio: .2),
                Image.asset('images/google.png',scale: 10.0,),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
TextWidget({@required this.icon,@required this.hintTest});
final IconData icon;
final String hintTest;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 12.0,
      child: Padding(
        padding: EdgeInsets.only(left: 50.0, right: 80.0),
        child: TextField(
          decoration: InputDecoration(focusColor: Colors.grey,
            contentPadding: EdgeInsets.fromLTRB(0.0, 00.0, 30.0, 12.0),
            icon: Icon(
              icon,
              color: Color(0xff2BC48B),
            ),
            //hintText: 'Name',
            labelText: hintTest,
          ),
        ),
      ),
    );
  }
}
