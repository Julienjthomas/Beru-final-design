import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      color: Colors.transparent,
      elevation: 9.0,
      clipBehavior: Clip.antiAlias,
      child: Container(
        height: 50.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.0),
            topRight: Radius.circular(25.0),
          ),
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: 50.0,
              width: MediaQuery.of(context).size.width / 2 - 40.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Icon(
                    Icons.home,
                    color: Colors.green,
                  ),
                  Icon(
                    Icons.history,
                    color: Color(0xff676e79),
                  ),
                ],
              ),
            ),
            Container(
              height: 50.0,
              width: MediaQuery.of(context).size.width / 2 - 40.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Icon(
                    Icons.settings,
                    color: Colors.green,
                  ),
                  Icon(
                    Icons.person,
                    color: Color(0xff676e79),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BottomBarCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(

      child: Container(
        height: 80.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.0),
            topRight: Radius.circular(25.0),
          ),
          color: Colors.white,
        ),
        child: Center(
          child: Row(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              SizedBox(
                width: 10.0,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Center(
                              child: Center(
                                  child: Text(
                            '4 ITEMS',
                            style: GoogleFonts.openSans(
                                fontSize: 15.0, color: Colors.grey),
                          ))),
                        ),
                      ),
                      Text(
                        '4 KG',
                        style: GoogleFonts.openSans(
                            fontSize: 15.0, color: Colors.grey),
                      ),
                    ],
                  ),
                  Text(
                    '₹200',
                    style: GoogleFonts.openSans(
                        fontSize: 20.0, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
              AspectRatio(aspectRatio: 1.0),
              Container(
                height: 50,
                width: 180.0,
                child: RaisedButton(
                  child: Text(
                    "View Cart",
                    style: GoogleFonts.openSans(fontSize: 18.0,color: Colors.white,fontWeight: FontWeight.w400),
                  ),
                  onPressed: () {},
                  color: Color(0xff2BC48B),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(08.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
