import 'package:beru_final/data_error.dart';
import 'package:beru_final/product_display.dart';
import 'package:beru_final/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:beru_final/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:styled_text/styled_text.dart';

class StartPage extends StatelessWidget {
  const StartPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(aspectRatio: 3.0),
        AspectRatio(
            aspectRatio: 4.0,
            child: Image(
              image: AssetImage('images/logo.png'),
            )),
        AspectRatio(aspectRatio: 50.0),
        Text(
          "Welcome to Beru",
          style:
          GoogleFonts.lato(fontSize: 30.0, fontWeight: FontWeight.bold),
        ),
        FlatButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return ErrorPage();
            }));
          },
          child: Padding(
            padding:
            const EdgeInsets.only(top: 70.0, right: 15.0, left: 15.0),
            child: AspectRatio(
              aspectRatio: 6.0,
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xff635FFC),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        child: Image.asset(
                          'images/fb.png',
                          scale: 22.0,
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50.0)),
                      ),
                      AspectRatio(aspectRatio: 0.8),
                      Text(
                        'Continue with facebook',
                        style: GoogleFonts.lato(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        FlatButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return ProductDisplay();
            }));
          },
          child: Padding(
            padding:
            const EdgeInsets.only(top: 25.0, right: 30.0, left: 30.0),
            child: AspectRatio(
              aspectRatio: 6,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Image.asset(
                        'images/google.png',
                        scale: 12.0,
                      ),
                    ),
                    AspectRatio(aspectRatio: 0.5),
                    Text(
                      'Continue with google',
                      style: GoogleFonts.lato(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
              top: 25.0, right: 30.0, left: 30.0, bottom: 15.0),
          child: AspectRatio(
            aspectRatio: 6,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              child: FlatButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0, right: 20.0),
                      child: Image.asset(
                        'images/logo.png',
                        scale: 15.0,
                      ),
                    ),
                    AspectRatio(aspectRatio: .37),
                    Text(
                      'Continue with Beru',
                      style: GoogleFonts.lato(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return SignUp();
                  }));
                },
              ),
            ),
          ),
        ),
        Text(
          'Already a member? Log in',
          style: GoogleFonts.lato(
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.underline,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 12.0,right: 50.0,left: 60.0),
          child: Center(
              child:StyledText(
                text: '<lato>By continuing, you agree to Beru\'s <bold> Terms of Service </bold>  and <bold> privacy policy </bold> </lato>',
                styles: {
                  'lato':GoogleFonts.lato(
                    fontSize: 12.0,
                  ),
                  'bold': GoogleFonts.lato(
                      fontSize: 12.0, fontWeight: FontWeight.bold
                  ),
                },
              )
//                Text(
//                  'By Continuing,you agree to Beru\'s Terms of Service \n and privacy policy',
//                  style: GoogleFonts.lato(fontSize: 12.0),
//                ),
          ),
        ),
      ],
    );
  }
}