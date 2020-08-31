//if some error occurs display this page

import 'package:flutter/material.dart';
class ErrorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Icon(
              Icons.notifications,
              color: Color(0xff545d68),
            ),
          ),
        ],
        title: Text(
          'Beru vegetables',
          style: TextStyle(
            fontSize: 30.0,
            color: Color(0xff545d68),
            fontFamily: 'SourceSansPro',
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: Icon(
          Icons.menu,
          color: Color(0xff545d68),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Container(
        height: 600,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'images/404.jpg'
            ),
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
