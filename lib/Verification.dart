import 'package:flutter/material.dart';

class Verification extends StatelessWidget {

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
                    left: 105.0,
                    child: Text(
                      'Vérification ',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color:Colors.white),
                    )),
                Positioned(
                    top: 120.0,
                    left: 120.0,
                    child: Image.asset(
    'assets/7.png',
                    )),
                Positioned(
                    top: 280.0,
                    left: 47.0,
                    child: Text(
                      'Vérification de votre numéro... \n'
                      '       Tapez le code recu.',
                      style: TextStyle(
                          fontFamily: 'Raleway',
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color:Colors.black54),
                    )),
                Container(
                    padding: EdgeInsets.only(top: 385.0, left: 20.0, right: 20.0),
                    child: Column(
                        children: <Widget>[

                          TextField(
                            decoration: InputDecoration(
                                labelText: 'Code de Vérification',
                                labelStyle: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.lightBlueAccent))),
                            obscureText: true,
                          ),
                          SizedBox(height: 90.0),
                          Container(
                            height: 50.0,
                            width: 120,
                            child: Material(
                              borderRadius: BorderRadius.circular(20.0),
                              shadowColor: Colors.lightBlueAccent,
                              color: Colors.grey,
                              elevation: 7.0,
                              child: GestureDetector(
                                onTap: () {},
                                child: Center(
                                  child: Text(
                                    'Vérifier',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Montserrat'),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ]))
              ])])])

        ]));
  }}