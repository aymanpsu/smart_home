import 'package:flutter/material.dart';
import '../functions/hex.dart';

import '../models/electronicsListModels.dart';

class ElectronicsList extends StatefulWidget {
  const ElectronicsList({Key key}) : super(key: key);

  @override
  _ElectronicsListState createState() => _ElectronicsListState();
}

class _ElectronicsListState extends State<ElectronicsList> {
  List<ElectronicsListModels> electronicsList = [
    ElectronicsListModels(
      id: 1,
      name: 'Lamp',
      image: 'assets/images/lamp.png',
      deception: '65% Brightness',
      status: true,
    ),
    ElectronicsListModels(
      id: 2,
      name: 'TV',
      image: 'assets/images/tv.png',
      deception: '37% Volume',
      status: false,
    ),
    ElectronicsListModels(
      id: 3,
      name: 'Air Conditioner',
      image: 'assets/images/air.png',
      deception: '24°C Temperture',
      status: true,
    ),
    ElectronicsListModels(
      id: 4,
      name: 'Fridge',
      image: 'assets/images/firdge.png',
      deception: '5°C Temperture',
      status: true,
    ),
    ElectronicsListModels(
      id: 5,
      name: 'CCTV Cam',
      image: 'assets/images/camra.png',
      deception: 'Left/Right : 96.4° & Up/Down : 86.2°',
      status: false,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: HexColor('#EFEFEF'),
        child: Padding(
          padding: const EdgeInsets.all(13.0),
          child: ListView.builder(
            itemCount: electronicsList.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 1,
                margin: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: ListTile(
                    leading: Image.asset(electronicsList[index].image),
                    title: Text(
                      electronicsList[index].name,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        electronicsList[index].deception,
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 10,
                        ),
                      ),
                    ),
                    trailing: Switch(
                      value: electronicsList[index].status,
                      activeColor: HexColor('#F88340'),
                      onChanged: (value) {
                        setState(() {
                          electronicsList[index].status = value;
                        });
                      },
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
