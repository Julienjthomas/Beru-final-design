import 'package:flutter/material.dart';

class BottomBar1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
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
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 50.0,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(
                    Icons.home,
                    color: Color(0xff341577),
                  ),
                  Icon(
                    Icons.history,
                    color: Color(0xff341577),
                  ),
                  Icon(
                    Icons.apps,
                    color: Color(0xff341577),
                    size: 35.0,
                  ),
                  Icon(
                    Icons.settings,
                    color: Color(0xff341577),
                  ),
                  Icon(
                    Icons.person,
                    color: Color(0xff341577),
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
