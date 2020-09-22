import 'package:flutter/material.dart';

class HowToUse extends StatelessWidget {

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
    'How To Use ',
    style: TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 24.0,
    fontWeight: FontWeight.bold,
    color:Colors.white),
    )),
    Positioned(
    top: 75.0,

    child: Image.asset(

    'assets/redPhone.jpg',
      height: 220,
      width: 350,
    )
    ),
        Positioned(
            top: 305.0,
            left: 9.0,
            child: Text(
   '                       Bienvenue sur WhosCalling!\n'
    '       Abonnez-vous en ligne (gratuitement) et créez \n votre profil.'
  ' Connectez-vous, sélectionnez la carte \n pour voir si l\'\ un de vos contacts est près de chez vous.\n'
   '      Vous pouvez également trouver un numéro de \n téléphone en sélectionnant le nom et le pays de votre \n contact ou trouver un contact uniquement à partir \n'
       '                    de son numéro de téléphone.\n',

              style: TextStyle(
                  fontFamily: 'Dosis',
                  fontSize: 17.0,
                  color:Colors.black),
            )),
        Positioned(
            top: 500.0,
            left: 90.0,
            child: Text(
              ' Aide & contact:',
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color:Colors.lightBlue),
            )),
        Positioned(
            top: 540.0,
            left: 9.0,
            child: Text(
              "  Si vous avez des questions, des suggestions, veuillez \n "
                  "          contacter notre équipe à l\'\ adresse suivante: \n"
            '                               info@WhosCalling.ma \n'
            '                                     Par téléphone:\n '
                  '                                + 212-512-644-734',
              style: TextStyle(
                  fontFamily: 'Dosis',
                  fontSize: 17.0,
                  color:Colors.black),
            )),
      ])])])

      ]));
  }}