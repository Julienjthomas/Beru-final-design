import 'package:beru_final/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back,
          color: Color(0xff707070),
        ),
        title: Text(
          'My Cart',
          style: GoogleFonts.openSans(fontSize: 20.0, color: Color(0xff5B5B5B)),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: [
          Padding(
            padding:
                EdgeInsets.only(top: 15.0, bottom: 5.0, left: 5.0, right: 5.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 3.0,
                      blurRadius: 5.0,
                    ),
                  ],
                  color: Color(0xffFBFBFB)),
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text('Deliver to :',style: GoogleFonts.roboto(fontSize: 10.0,color: Color(0xff656565)),),
                    Text('Zachariya Pothen',style: GoogleFonts.roboto(fontSize: 13.0,color: Color(0xff5D5D5D),fontWeight: FontWeight.bold),),
                    Container(
                      width: 65.0,
                      height: 17.0,
                      child: RaisedButton(

                        child: Text(
                          "Change",
                          style: GoogleFonts.roboto(fontSize: 8.0,color: Color(0xffFFFFFF)),
                        ),
                        onPressed: () {

                        },
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
          ),
          _buildCard('MANGO', '₹ 40', 'images/kiwi.jpg', context),
          //_buildCard('MANGO', '₹ 40', 'images/kiwi.jpg', context),
          //_buildCard('MANGO', '₹ 40', 'images/kiwi.jpg', context),
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: RaisedButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    "Add new item",
                    style: GoogleFonts.openSans(
                        fontSize: 14.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return Cart();
                  }),
                );
              },
              color: Color(0xff2BC48B),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(08.0),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomBarCart(),
    );
  }
}

Widget _buildCard(String name, String price, String imgPath, context) {
  int dropdownValue = 1;
  return Padding(
    padding: EdgeInsets.only(top: 15.0, bottom: 5.0, left: 5.0, right: 5.0),
    child: InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 3.0,
                blurRadius: 5.0,
              ),
            ],
            color: Color(0xffFBFBFB)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Row(
                children: <Widget>[
                  Hero(
                      tag: imgPath,
                      child: Container(
                        height: 92.0,
                        width: 92.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                imgPath,
                              ),
                              fit: BoxFit.contain),
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(left: 60.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: GoogleFonts.openSans(
                            color: Color(0xff575e67),
                            fontSize: 18.0,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          'Sold by : Akhil Vijayan',
                          style: GoogleFonts.openSans(
                            color: Color(0xff979797),
                            fontSize: 12.0,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          price,
                          style: GoogleFonts.openSans(
                            color: Color(0xff575e67),
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          'Delivery by Thu Aug 2020',
                          style: GoogleFonts.openSans(
                            color: Color(0xff979797),
                            fontSize: 12.0,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Container(
                            color: Color(0xffebebeb),
                            height: 1.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 40.0, bottom: 20),
                  child: Material(
                    elevation: 2.0,
                    child: Container(
                      color: Color(0xffFBFBFB),
                      width: 50.0,
                      height: 30.0,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 5.0),
                            child: Text(
                              'Qty:',
                              style: GoogleFonts.openSans(fontSize: 8.0),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: DropdownButton<int>(
                              value: dropdownValue,
                              icon: Icon(
                                Icons.arrow_downward,
                                size: 10.0,
                              ),
                              iconSize: 24,
                              elevation: 16,
                              style: GoogleFonts.openSans(
                                  color: Colors.black, fontSize: 10.0),

                              onChanged: (int) {},
                              //                      onChanged: (String newValue) {
                              ////                        setState(() {
                              ////                          dropdownValue = newValue;
                              ////                        });
                              //                      },
                              items: <int>[1, 2, 3, 4]
                                  .map<DropdownMenuItem<int>>((int value) {
                                return DropdownMenuItem<int>(
                                  value: value,
                                  child: Text(value.toString()),
                                );
                              }).toList(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              color: Color(0xffebebeb),
              height: 1.0,
              width: double.infinity,
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 15.0,
                left: 5.0,
                right: 5.0,
                bottom: 5.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(
                    Icons.delete,
                    size: 10.0,
                  ),
                  Text(
                    'Remove',
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
                    style: GoogleFonts.openSans(
                        fontSize: 10.0, color: Color(0xff2BC48B)),
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              SizedBox(
                width: 10.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 0.0, top: 20.0),
                      child: Text(
                        '₹200',
                        style: GoogleFonts.openSans(
                            fontSize: 15.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ]),
                  Text(
                    'Price details',
                    style: GoogleFonts.openSans(
                      color: Colors.grey,
                      fontSize: 17.0,
                    ),
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
                    "Place Order",
                    style: GoogleFonts.openSans(
                        fontSize: 18.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return Cart();
                      }),
                    );
                  },
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
