
import 'package:flutter/material.dart';
import 'package:flutter_firebase/Animation/FadeAnimation.dart';
import 'package:flutter_firebase/Inscription.dart';




class Authentification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 290,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: -40,
                    height: 290,
                    width: width,
                    child: FadeAnimation(1, Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/3.png'),
                              fit: BoxFit.fill
                          )
                      ),
                    )),
                  ),

                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  FadeAnimation(1.5, Text("Authentification", style: TextStyle(color: Color.fromRGBO(49, 39, 79, 1), fontWeight: FontWeight.bold, fontSize: 30),)),
                  SizedBox(height:40,),
                  FadeAnimation(1.7, Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.lightBlueAccent,
                            blurRadius: 20,
                            offset: Offset(0, 4),
                          )
                        ]
                    ),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              border: Border(bottom: BorderSide(
                                  color: Colors.grey[200]
                              ))
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Email ou Numéro",
                                hintStyle: TextStyle(color: Colors.grey)
                            )

                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Mot De Passe",
                                hintStyle: TextStyle(color: Colors.grey)
                            ),
                          ),
                        )
                      ],
                    ),
                  )),
                  SizedBox(height: 20,),
                  FadeAnimation(1.7, Center(child: Text("Mot de pass oublié", style: TextStyle(color: Colors.black54),))),
                  SizedBox(height: 30,),
                  FadeAnimation(1.9, Container(
                    height: 50,
                    margin: EdgeInsets.symmetric(horizontal: 60),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color:  Colors.grey,
                    ),
                    child: Center(
                      child: Text("S'authentifier", style: TextStyle(color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat'),),
                    ),
                  )),
                  SizedBox(height: 30),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=>new Inscription()));
                },

                child: Text("                         Créer un compte", style: TextStyle(color: Colors.black54, fontFamily: 'Montserrat')))


                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}