import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_pro/carousel_pro.dart';

class ProductDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Beru',
          style: GoogleFonts.openSans(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
              color: Color(0xff5B5B5B)),
        ),
        centerTitle: true,
        backgroundColor: Color(0xffFFFFFF),
        leading: Icon(
          Icons.arrow_back,
          color: Color(0xff5B5B5B),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Icon(Icons.shopping_cart, color: Color(0xff5B5B5B)),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15.0, bottom: 10.0),
            child: SizedBox(
                height: 289.0,
                width: double.infinity,
                child: Carousel(
                  images: [
                    Image.asset(
                      'images/cabbage.jpg',
                    ),
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
          Padding(
            padding: const EdgeInsets.only(left: 28.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Text(
                    'Capsicum',
                    style: GoogleFonts.roboto(fontSize: 23.0),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      '₹96',
                      style: GoogleFonts.roboto(fontSize: 25.0),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '120',
                        style: GoogleFonts.roboto(
                            fontSize: 12.0,
                            color: Color(0xff979797),
                            decoration: TextDecoration.lineThrough),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        '20% off',
                        style: GoogleFonts.roboto(
                          fontSize: 12.0,
                          color: Color(0xff2BC48A),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 130.0, right: 26.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          buildOutlineButton(icon: Icons.remove, press: () {}),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 0.0, vertical: 8),
                            child: Container(
                              color: Color(0x772BC48B),
                              width: 26.0,
                              height: 19.0,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 3),
                                child: Text(
                                  '1',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.openSans(fontSize: 10.0),
                                ),
                              ),
                            ),
                          ),
                          buildOutlineButton(icon: Icons.add, press: () {}),
                        ],
                      ),
                    ),
                  ],
                ),
                AspectRatio(aspectRatio: 5000.0),
                Text(
                  'per piece',
                  style: GoogleFonts.roboto(
                      fontSize: 10.0, color: Color(0xff7E7E7E)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width - 65,
                    height: 1.0,
                    color: Colors.grey.shade300,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                  child: Text(
                    'Product Details',
                    style: GoogleFonts.roboto(
                        fontSize: 11.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff202020)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Weight',
                        style: GoogleFonts.roboto(
                            fontSize: 11.0, color: Color(0xff979797)),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 3,
                      ),
                      Text(
                        '500-700 gm',
                        style: GoogleFonts.roboto(
                            fontSize: 11.0, color: Color(0xff979797)),
                      ),
                    ],
                  ),
                ),
                Text(
                  'Details',
                  style: GoogleFonts.roboto(
                      fontSize: 10.0,
                      color: Color(0xff202020),
                      fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 12.0,
                  ),
                  child: Text(
                    'Capsicum plants are partially self-pollinationg and are often propagated',
                    style: GoogleFonts.roboto(
                        fontSize: 10.0, color: Color(0xff474747)),
                  ),
                ),
                Text(
                  'through grafting to maintain a predictable quality of the fruit.',
                  style: GoogleFonts.roboto(
                      fontSize: 10.0, color: Color(0xff474747)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width - 65,
                    height: 1.0,
                    color: Colors.grey.shade300,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Icon(Icons.delivery_dining,
                            color: Color(0xff979797)),
                      ),
                      Text(
                        'Delivery by Aug 20, Saturday',
                        style: GoogleFonts.roboto(
                            fontSize: 10.0,
                            color: Color(0xff202020),
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: Icon(Icons.repeat, color: Color(0xff979797)),
                    ),
                    Text(
                      'Cash On Delivery only',
                      style: GoogleFonts.roboto(
                          fontSize: 10.0,
                          color: Color(0xff202020),
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Material(
        color: Colors.black,
        elevation: 15.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              color: Color(0xffFFFFFF),
              width: MediaQuery.of(context).size.width / 2,
              height: 58.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.add_shopping_cart,
                    color: Color(0xff7E7E7E),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'Buy now',
                    style: GoogleFonts.roboto(
                        fontSize: 16.0,
                        color: Color(0xff7E7E7E),
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            Container(
              color: Color(0xff2BC48A),
              width: MediaQuery.of(context).size.width / 2,
              height: 58.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.check_circle_outline,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    "Add to bag",
                    style: GoogleFonts.roboto(
                        fontSize: 10.0,
                        color: Color(0xffffffff),
                        fontWeight: FontWeight.w400),
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
