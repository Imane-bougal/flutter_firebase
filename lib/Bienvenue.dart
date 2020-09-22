import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bienvenue extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: ListView(shrinkWrap: true, children: <Widget>[
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
      Stack(children: [
      Stack(children: <Widget>[
      Container(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
    ),
    Container(
    height: 222.0,
    width: double.infinity,
    color: Colors.grey,
        child: Image.asset(
          'assets/11.jpeg',
          width: double.infinity,
          height: double.infinity,
        )
    ),
        Positioned(
            top: 250.0,
            left:85.0,
            child: Text(
              'Bienvenue',
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                  color:Colors.black),
            )),
        Positioned(
            top: 320.0,
            left:65.0,
            right: 10,
            child: Text(
              '      Cette application fournit un \n'
              '   annuaire telephonique complet \n'
              '      dans lequel on retrouve les \n'
              '      numeros des particuliers \n'
                  '            et des entreprises. \n'
              ,

              style: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                  color:Colors.grey),
            )),
    Container(
    padding: EdgeInsets.only(top: 435.0, left: 20.0, right: 20.0),
    child: Column(
    children: <Widget>[

    TextField(
    decoration: InputDecoration(
    labelText: 'Numero De Telephone',
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
                'Continuer',
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
      ])

])]
      )]));
  }
}