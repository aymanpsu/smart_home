import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../functions/hex.dart';
import '../main.dart';
import '../Widgets/devicesList.dart';

class Room extends StatelessWidget {
  const Room({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        bottomOpacity: 0.0,
        backgroundColor: HexColor('#F88340'),
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyApp()),
            );
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: HexColor('#F88340'),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(35.0),
                bottomRight: Radius.circular(35.0),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        "Bed Room",
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.w900,
                          fontSize: 28,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 25, top: 7),
                      child: Icon(
                        Icons.settings,
                        size: 28,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    top: 10,
                  ),
                  child: Text(
                    "3 family meembers have acess",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    top: 35,
                    bottom: 35,
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          color: HexColor('#FFA16A'),
                        ),
                        child: Center(
                          child: ClipOval(
                            child: Image.asset('assets/images/hot.png'),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              '24°C',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Text(
                                'TEMP',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 60),
                        child: Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.0),
                            color: HexColor('#FFA16A'),
                          ),
                          child: Center(
                            child: ClipOval(
                              child: Image.asset('assets/images/drop.png'),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              '50%',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Text(
                                'HUMIDITY',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          ElectronicsList(),
        ],
      ),
      backgroundColor: HexColor('#EFEFEF'),
    );
  }
}
