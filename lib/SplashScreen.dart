import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {

  @override
  _NewSplashState createState() => _NewSplashState();}

class _NewSplashState extends State<SplashScreen>{
@override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 3),()=>Navigator.pushNamed(context,"/landing" ));
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  gradient: LinearGradient(
                    colors: [
                      Colors.grey,Colors.lightBlueAccent
                    ],
                    begin: Alignment.centerRight,
                    end: new Alignment(-1.0, -1.0),
                  ),
                ),
              ),
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 85.0,
                      child:  Image.asset(('assets/logoWhos.png'),
                        fit: BoxFit.cover,
                        height: 165.0,
                        width: 165.0,
                      ),

                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                    ),

                    Text(
                        'WhosCalling!',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                            fontFamily:'Courgette'
                        ),
                    )
                  ]
              )
            ]
        )
    );


  }
}

















