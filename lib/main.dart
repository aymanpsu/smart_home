import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './functions/hex.dart';

import './Widgets/topSection.dart';
import './Widgets/roomsList.dart';
import './Widgets/bottomNavigationBar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Home',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#F88340'),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TopSection(),
          Rooms(),
          BottomBar(),
        ],
      ),
    );
  }
}
