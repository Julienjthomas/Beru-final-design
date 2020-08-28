import 'package:beru_final/bottom_bar.dart';
import 'package:beru_final/vegetables_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 6, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 2.0,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 30.0,),
            child: Icon(
              Icons.favorite,
              color: Colors.green,
            ),
          ),
        ],
        title: Text(
          'Beru Community',
          style: GoogleFonts.openSans(
            color: Color(0xff545d68),
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: Icon(
          Icons.keyboard_backspace,
          color: Color(0xff545d68),
        ),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 8.0,right: 8.0,left: 8.0),
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
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
            TabBar(
                controller: _tabController,
                indicatorColor: Colors.transparent,
                labelColor: Colors.green,
                isScrollable: true,
                labelPadding: EdgeInsets.only(right: 25.0),
                unselectedLabelColor: Color(0xFFCDCDCD),
                tabs: [
                  Tab(
                    child: Text(
                      'All',
                      style: GoogleFonts.openSans(fontSize: 21.0),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Fruits',
                      style: GoogleFonts.openSans(fontSize: 21.0),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Vegetables',
                      style: GoogleFonts.openSans(fontSize: 21.0),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Rice',
                      style: GoogleFonts.openSans(fontSize: 21.0),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Millets',
                      style: GoogleFonts.openSans(fontSize: 21.0),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Oils',
                      style: GoogleFonts.openSans(fontSize: 21.0),
                    ),
                  ),
                ]),
            Expanded(
              child: Container(
                  height: MediaQuery.of(context).size.height - 50.0,
                  width: double.infinity,
                  child: TabBarView(controller: _tabController, children: [
                    VegetablePage(),
                    VegetablePage(),
                    VegetablePage(),
                    VegetablePage(),
                    VegetablePage(),
                    VegetablePage(),
                  ])),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomBarCart(),
    );
  }
}
