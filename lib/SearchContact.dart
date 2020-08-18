import 'package:country_code_picker/country_code_picker.dart';
import 'package:country_code_picker/country_localizations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class SearchContact extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<SearchContact> {
  @override

  Widget build(BuildContext context) {
    supportedLocales: [
      Locale('en'),
      Locale('it'),
      Locale('fr'),
      Locale('es'),
      Locale('de'),
      Locale('pt'),
    ];

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
    left: 35.0,
    child: Text(
    ' Chercher Un Utilisateur',
    style: TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 24.0,
    fontWeight: FontWeight.bold,
    color:Colors.white),

    )),


        Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 185),
          margin: EdgeInsets.only(top: 75,left: 5,right: 5),

          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
            color: Color.fromRGBO(153, 179, 255, 1),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 20,
                  offset: Offset(0, 4),
                )
              ]
          ),
        ),
        Positioned(
            top: 50.0,
            left: 110.0,
    child: IconButton(
    alignment: Alignment.topLeft,
    icon: Icon(Icons.flag),
    color: Colors.black,
    iconSize: 130,
    ),),
        Positioned(
            top:  183.0,
            left: 20.0,
            child: Text(
              'Sélectionner Un Pays',
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 15.0,
                  fontWeight: FontWeight.normal,
                  color:Colors.white),)),
        Positioned(
          top: 199.0,
          left: 300.0,
          child: IconButton(
            alignment: Alignment.topLeft,
            icon: Icon(Icons.keyboard_arrow_down),
            color: Colors.white,
            iconSize: 30,
          ),),
        Positioned(
          top: 190.0,
          left: 5.0,

          child: Padding(

            padding: const EdgeInsets.all(8.0),
            child: CountryCodePicker(
              onChanged: (e) => print(e.toLongString()),
              showCountryOnly: true,
              showOnlyCountryWhenClosed: true,

            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 200),
          margin: EdgeInsets.only(top: 265,left: 5,right: 5),
          //color: Colors.white,
          decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(7),
            color:  Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 20,
                  offset: Offset(0, 4),
                )
              ]
          ),
        ),
        Positioned(
          top: 245.0,
          left: 1.0,
          child: IconButton(
            alignment: Alignment.topLeft,
            icon: Icon(Icons.account_box),
            color: Colors.black,
            iconSize: 115,),
        ),
        Positioned(
            top: 276.0,
            left: 115.0,
            child: Text(
              'Recherche Par \n'
                  '        Nom',
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 31.0,
                  fontWeight: FontWeight.bold,
                  color:Colors.black54),)),
        Container(
          margin: EdgeInsets.fromLTRB(10, 390, 10, 15),
          decoration: BoxDecoration(
              border: Border(bottom: BorderSide(
                  color: Colors.grey[200]
              ))

          ),
          child: TextField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
                icon: Icon(Icons.assignment,color: Colors.blueGrey,),
                border: InputBorder.none,
                hintText: "Tapez le nom",
                hintStyle: TextStyle(color: Colors.black)
            ),
          ),

        ),

        //Third Container
        Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 200),
          margin: EdgeInsets.only(top: 470,left: 5,right: 5),

          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              color: Color.fromRGBO(153, 179, 255, 1),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 20,
                  offset: Offset(0, 4),
                )
              ]
          ),
        ),

        Positioned(
          top: 459.0,
          left: 230.0,
          child: IconButton(
            alignment: Alignment.topRight,
            icon: Icon(Icons.phone_android),
            color: Colors.black,
            iconSize: 127,),
        ),
        Positioned(
            top: 490.0,
            left: 10.0,
            child: Text(
              'Recherche Par \n'
                  '     Numéro',
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                  color:Colors.white),)),
        Container(
        margin: EdgeInsets.fromLTRB(10, 590, 10, 15),
          decoration: BoxDecoration(
              border: Border(bottom: BorderSide(
                  color: Colors.grey[200]
              ))

          ),
          child: TextField(
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              icon: Icon(Icons.search),
                border: InputBorder.none,
                hintText: "Tapez le numéro",
                hintStyle: TextStyle(color: Colors.white)
            ),
          ),

        ),
      ])])])]));


  }}