import 'package:beru_final/bottom_bar.dart';
import 'package:beru_final/bottom_bar1.dart';
import 'package:beru_final/cart_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_pro/carousel_pro.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.menu,
          color: Colors.grey,
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 100.0),
          child: Text(
            "Beru",
            style: GoogleFonts.lato(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20.0),
          ),
        ),
        elevation: 2.0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Icon(
              Icons.shopping_cart,
              color: Colors.grey,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
            child: Material(
              borderRadius: BorderRadius.circular(10.0),
              elevation: 20.0,
              shadowColor: Colors.white,
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 10.0),
                  alignLabelWithHint: true,
                  suffixIcon: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  hintText: 'search',
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0, bottom: 10.0),
            child: SizedBox(
                height: 150.0,
                width: double.infinity,
                child: Carousel(
                  images: [
                    NetworkImage(
                        'https://media.gettyimages.com/photos/colorful-fresh-organic-vegetables-picture-id882314812'),
                    NetworkImage(
                        'https://previews.123rf.com/images/puhhha/puhhha1805/puhhha180500313/100520940-healthy-food-fresh-organic-vegetables-on-white-wooden-background-high-resolution.jpg'),
                    NetworkImage(
                        'https://previews.123rf.com/images/puhhha/puhhha1805/puhhha180500313/100520940-healthy-food-fresh-organic-vegetables-on-white-wooden-background-high-resolution.jpg'),
                    NetworkImage(
                        'https://media.gettyimages.com/photos/colorful-fresh-organic-vegetables-picture-id882314812')
                  ],
                  dotSize: 4.0,
                  dotSpacing: 15.0,
                  dotColor: Colors.lightGreenAccent,
                  indicatorBgPadding: 2.0,
                  dotBgColor: Colors.transparent,
                  //borderRadius: true,
                  moveIndicatorFromBottom: 180.0,
                  noRadiusForIndicator: true,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              right: 20.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Shop by category',
                  style: GoogleFonts.lato(
                      fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                Text('View all',
                    style: GoogleFonts.lato(
                        fontSize: 13.0, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0, right: 8.0, left: 8.0),
              child: GridView.count(
                crossAxisCount: 2,
                primary: false,
                shrinkWrap: true,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 15.0,
                childAspectRatio: 0.99,
                children: <Widget>[
                  buildCard('FRUITS', 'images/fruit-image.png', context),
                  buildCard('VEGETABLES', 'images/vegtransparent.png', context),
                  buildCard('RICE', 'images/rice.png', context),
                  buildCard('MILLET', 'images/pngegg.png', context),
                  buildCard('OIL', 'images/pngegg(1).png', context),
                  buildCard('DALS AND PULSES', 'images/pngegg(2).png', context),
                ],
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

Widget buildCard(String name, String imgPath, context) {
  return Padding(
    padding: EdgeInsets.only(top: 15.0, bottom: 5.0, left: 5.0, right: 5.0),
    child: InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)
        {
          return CartPage();
        }
        ),
        );
         },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 7.0,
                blurRadius: 7.0,
              ),
            ],
            color: Colors.white),
        child: Column(
          children: <Widget>[
            Hero(
                tag: imgPath,
                child: Container(
                  margin: EdgeInsets.only(top: 10.0),
                  height: 100.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          imgPath,
                        ),
                        fit: BoxFit.contain),
                  ),
                )),
            SizedBox(
              height: 7.0,
            ),
            Text(
              name,
              style: TextStyle(
                color: Color(0xff575e67),
                fontFamily: 'SourceSansPro',
                fontSize: 18.0,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
