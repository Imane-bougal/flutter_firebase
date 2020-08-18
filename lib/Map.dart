import 'package:flutter/material.dart';

class Mapofcontacts extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

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
                    left: 145.0,
                    child: Text(
                      'Map ',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color:Colors.white),
                    )),
              ])])])

        ]));
  }}