import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VegetablePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
              padding: EdgeInsets.only(right: 15.0),
              width: MediaQuery.of(context).size.width - 30.0,
              height: MediaQuery.of(context).size.height - 50.0,
              child: GridView.count(
                crossAxisCount: 2,
                primary: false,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 15.0,
                childAspectRatio: .7,
                children: <Widget>[
                  _buildCard('Apple', '\$3.99', 'images/apple.jpg', false,
                      false, context),
                  _buildCard('Banana', '\$5.99', 'images/banana.jpg', true,
                      false, context),
                  _buildCard('Cabbage', '\$1.99', 'images/cabbage.jpg', false,
                      true, context),
                  _buildCard('kiwi', '\$2.99', 'images/kiwi.jpg', false, false,
                      context),
                  _buildCard('tomato', '\$2.99', 'images/tomato.jpg', false,
                      false, context),
                  _buildCard('pineapple', '\$2.99', 'images/pineapple.jpg',
                      false, false, context),
                ],
              )),
          SizedBox(height: 15.0)
        ],
      ),
    );
  }

  Widget _buildCard(String name, String price, String imgPath, bool addded,
      bool isFavourite, context) {
    return Padding(
      padding: EdgeInsets.only(top: 15.0, bottom: 5.0, left: 5.0, right: 5.0),
      child: InkWell(
        onTap: () {
//        Navigator.push(
//          context,
//          MaterialPageRoute(
//            builder: (context) => ,
//          ),
//        );
        },
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 3.0,
                  blurRadius: 5.0,
                ),
              ],
              color: Colors.white),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 5.0, right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    isFavourite
                        ? Icon(
                            Icons.favorite,
                            color: Color(0xff2BC48B),
                          )
                        : Icon(
                            Icons.favorite_border,
                            color: Color(0xff2BC48B),
                          )
                  ],
                ),
              ),
              Hero(
                  tag: imgPath,
                  child: Container(
                    height: 75.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            imgPath,
                          ),
                          fit: BoxFit.fitHeight),
                    ),
                  )),

              Text(
                name,
                style: GoogleFonts.openSans(
                  color: Color(0xff575e67),
                  fontSize: 18.0,
                ),
              ),
              Text(
                price,
                style: GoogleFonts.openSans(
                  color: Color(0xff575e67),
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: <Widget>[
                  buildOutlineButton(icon: Icons.remove, press: () {}),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 0.0, vertical: 8),
                    child: Container(
                      color: Color(0x772BC48B),
                      width: 26.0,
                      height: 18.0,
                      child: Padding(
                        padding: const EdgeInsets.only(top:3),
                        child: Text(
                          '1',textAlign: TextAlign.center,
                          style: GoogleFonts.openSans(fontSize: 10.0),
                        ),
                      ),
                    ),
                  ),
                  buildOutlineButton(icon: Icons.add, press: () {}),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  color: Color(0xffebebeb),
                  height: 1.0,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 5.0, right: 5.0,bottom: 5.0,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(
                      Icons.add_shopping_cart,
                      size: 10.0,
                    ),
                    Text(
                      'Add to bag',
                      style: GoogleFonts.openSans(fontSize: 10.0),
                    ),

                    Container(
                      color: Color(0xffebebeb),
                      height: 15.0,
                      width: 1.0,
                    ),
                    Icon(
                      Icons.check_circle_outline,
                      size: 10.0,
                      color: Color(0xff2BC48B),
                    ),
                    Text(
                      'Buy Now',
                      style: GoogleFonts.openSans(fontSize: 10.0,color: Color(0xff2BC48B)),
                    ),

//                    ,
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

SizedBox buildOutlineButton({IconData icon, Function press}) {
  return SizedBox(
    width: 22,
    height: 18,
    child: OutlineButton(
      padding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(2),
      ),
      onPressed: press,
      child: Icon(
        icon,
        size: 10.0,
      ),
    ),
  );
}
