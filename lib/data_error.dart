//if some error occurs display this page

import 'package:beru_final/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class ErrorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1.0,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Icon(
              Icons.shopping_cart,
              color: Color(0xff545d68),
            ),
          ),
        ],
        title: Text(
          'Beru',
          style: GoogleFonts.openSans(fontSize: 25.0,fontWeight: FontWeight.bold,color: Color(0xff5B5B5B)),
        ),
        leading: Icon(
          Icons.menu,
          color: Color(0xff545d68),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Color(0xffF1F1F1),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Center(
            child: Container(
              width:83.71,
              height: 83.71,
              child: Image.asset(
                      'images/error.png',scale: 2.0,
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 14.64,bottom: 15.0),
            child: Text('Oops !',style:GoogleFonts.roboto(fontSize: 28.0,color: Color(0xff5B5B5B)) ,),
          ),
          Text('Something went wrong.Please check',style:GoogleFonts.roboto(fontSize: 14.0,color: Color(0xff5B5B5B)) ,),
          Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: Text('your internet connection.',style:GoogleFonts.roboto(fontSize: 14.0,color: Color(0xff5B5B5B)) ,),
          ),
          Container(
            height: 40,
            width: 150.0,
            child: RaisedButton(
              child: Text(
                "Refresh",
                style: GoogleFonts.roboto(color: Color(0xffFFFFFF),fontSize: 14.0),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return ;
                }),);
              },
              color: Color(0xff2BC48B),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(08.0),
              ),
            ),
          ),

        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.white,
        child: Image(image: AssetImage('images/logo.png')),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(),
    );
  }
}
