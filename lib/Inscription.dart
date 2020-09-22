import 'package:flutter/material.dart';
import 'package:device_info/device_info.dart';
class Inscription extends StatelessWidget {

  @override

  Widget build(BuildContext context) {
    var dateInscri=DateTime.now();
    Future<String> _getId() async {
      DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
      if (Theme.of(context).platform == TargetPlatform.iOS) {
        IosDeviceInfo iosDeviceInfo = await deviceInfo.iosInfo;
        return iosDeviceInfo.identifierForVendor; // unique ID on iOS
      } else {
        AndroidDeviceInfo androidDeviceInfo = await deviceInfo.androidInfo;
        return androidDeviceInfo.androidId; // unique ID on Android
      }
    }
    _getId().then((id) {
      String deviceId = id;
   print(deviceId);
    });

    return Scaffold(
      body: ListView(shrinkWrap: true, children: <Widget>[
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
      Stack(children: [
      Stack(children: <Widget>[
      Container(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
    ),
    Container(
    height: 57.0,
    width: double.infinity,
    color: Colors.grey,
    ),


    Positioned(
    top: 15.0,
    left: 105.0,
    child: Text(
    'Inscription ',
    style: TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 24.0,
    fontWeight: FontWeight.bold,
    color:Colors.white),
    )),
        Positioned(
            top: 75.0,
      //      left: 80.0,
            child: Image.asset(
              'assets/1.png',
              height: 190,
              width: 350,

            )),
    Container(
    padding: EdgeInsets.only(top: 255.0, left: 20.0, right: 20.0),
    child: Column(
    children: <Widget>[
        SizedBox(height: 10.0),
        TextField(
          decoration: InputDecoration(
              labelText: 'NOM',
              labelStyle: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
              // hintText: 'EMAIL',
              // hintStyle: ,
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.lightBlueAccent))),
        ),
        SizedBox(height: 10.0),
        TextField(
          decoration: InputDecoration(
              labelText: 'PRENOM',
              labelStyle: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
              // hintText: 'EMAIL',
              // hintStyle: ,
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.lightBlueAccent))),
        ),
        SizedBox(height: 10.0),
        TextField(
          decoration: InputDecoration(
              labelText: 'EMAIL ',
              labelStyle: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.lightBlueAccent))),
          obscureText: true,
        ),
        SizedBox(height: 10.0),
        TextField(
          decoration: InputDecoration(
              labelText: 'Mot De Passe ',
              labelStyle: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.lightBlueAccent))),
        ),

        SizedBox(height: 35.0),
        Container(
            height: 40.0,
            child: Material(
              borderRadius: BorderRadius.circular(20.0),
              shadowColor: Colors.lightBlueAccent,
              color: Colors.grey,
              elevation: 7.0,
              child: GestureDetector(
                onTap: () {},
                child: Center(
                  child: Text(
                    'Continuer',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat'),
                  ),
                ),
              ),
            )),
              ]))

      ])])])

      ]));
  }}