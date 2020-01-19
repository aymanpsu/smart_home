import 'package:flutter/material.dart';
import '../functions/hex.dart';
import '../models/roomsListModels.dart';
import '../screens/roomDetails.dart';

class Rooms extends StatefulWidget {
  const Rooms({Key key}) : super(key: key);

  @override
  _RoomsState createState() => _RoomsState();
}

class _RoomsState extends State<Rooms> {
  List<RoomsListModels> roomsList = [
    RoomsListModels(
      id: 1,
      name: 'Living Room',
      numberOfFamilyMember: 3,
      numberOfDevices: 4,
      status: true,
    ),
    RoomsListModels(
      id: 2,
      name: 'Bed Room',
      numberOfFamilyMember: 3,
      numberOfDevices: 5,
      status: true,
    ),
    RoomsListModels(
      id: 3,
      name: 'Guest Room',
      numberOfFamilyMember: 2,
      numberOfDevices: 3,
      status: false,
    ),
    RoomsListModels(
      id: 4,
      name: 'Kitchen',
      numberOfFamilyMember: 2,
      numberOfDevices: 4,
      status: true,
    ),
    RoomsListModels(
      id: 5,
      name: 'Kids Room',
      numberOfFamilyMember: 1,
      numberOfDevices: 4,
      status: true,
    ),
    RoomsListModels(
      id: 6,
      name: 'Blacony',
      numberOfFamilyMember: 4,
      numberOfDevices: 2,
      status: false,
    )
  ];
  bool switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 17,
        mainAxisSpacing: 15,
        crossAxisCount: 2,
        childAspectRatio: (60.0 / 69.1),
        children: List.generate(roomsList.length, (index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Room()),
              );
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(13.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Text(
                        roomsList[index].name,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          // fontFamily: 'Anton',
                        ),
                      ),
                    ),
                    Text(
                      "${roomsList[index].numberOfFamilyMember} family meembers have acess",
                      style: TextStyle(
                        // fontFamily: 'Anton',
                        fontSize: 13,
                        color: HexColor('#C8C8C8'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 10),
                      child: Text(
                        "${roomsList[index].numberOfDevices} Devices",
                        style: TextStyle(
                          color: HexColor('#F88340'),
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          // fontFamily: 'Anton',
                        ),
                      ),
                    ),
                    Switch(
                      value: roomsList[index].status,
                      activeColor: HexColor('#F88340'),
                      onChanged: (value) {
                        setState(() {
                          roomsList[index].status = value;
                        });
                      },
                    )
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
