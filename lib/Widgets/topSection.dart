import 'package:flutter/material.dart';

import '../functions/hex.dart';

class TopSection extends StatefulWidget {
  TopSection({Key key}) : super(key: key);

  @override
  _TopSectionState createState() => _TopSectionState();
}

class _TopSectionState extends State<TopSection> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60, left: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ClipOval(
            child: Image.asset(
              "assets/images/user_logo.jpg",
              height: 45,
              width: 45,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 18, bottom: 5),
            child: Text(
              "Hi Sara",
              style: TextStyle(
                  fontSize: 32,
                  color: HexColor('#FFFFFB'),
                  // fontFamily: 'Anton',
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Text(
              "Welcome to Home",
              style: TextStyle(
                  fontSize: 15,
                  // fontFamily: 'Anton',
                  color: HexColor('#FFDBC0'),
                  letterSpacing: 1,
                  fontWeight: FontWeight.w100),
            ),
          )
        ],
      ),
    );
  }
}
