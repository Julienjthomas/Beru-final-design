import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_pro/carousel_pro.dart';
class ProductDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Beru',style: GoogleFonts.openSans(fontSize: 25.0,fontWeight: FontWeight.bold),),
        centerTitle: true,backgroundColor: Color(0xFFFFFF),
        leading: Icon(Icons.arrow_back),
        actions: [
          Icon(Icons.shopping_cart),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15.0, bottom: 10.0),
            child: SizedBox(
                height: 289.0,
                width: double.infinity,
                child: Carousel(
                  images: [
                    Image.asset('images/cabbage.jpg',),
                    Image.asset('images/cabbage.jpg'),
                    Image.asset('images/cabbage.jpg'),
                    Image.asset('images/cabbage.jpg'),
                  ],
                  dotSize: 4.0,
                  dotSpacing: 15.0,
                  dotColor: Colors.blueGrey,
                  indicatorBgPadding: 2.0,
                  dotBgColor: Colors.transparent,
                  //borderRadius: true,
                  moveIndicatorFromBottom: 180.0,
                  noRadiusForIndicator: true,
                )),
          ),
        ],
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 374.5,
            height: 58.0,
            child: Row(
              children: [
                Icon(Icons.add_shopping_cart),
                SizedBox(width: 10.0,),
                Text(
                  'Buy now',
                  style: GoogleFonts.roboto(fontSize: 16.0,color: Color(0xff7E7E7E),fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          Container(
            width: 374.5,
            child: Row(
              children: [
                Icon(Icons.check_circle_outline,),
                SizedBox(width: 10.0,),

                Text(
                  "Add to bag",
                  style: GoogleFonts.roboto(fontSize: 16.0,color: Color(0xff7E7E7E),fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
