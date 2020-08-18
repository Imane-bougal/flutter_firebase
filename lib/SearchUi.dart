/**import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class SearchUi extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<SearchUi> {
  @override
  void initState() {
    _getStateList();
    super.initState();
  }
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
    height: 67.0,
    width: double.infinity,
    color: Colors.grey,
    ),
    Positioned(
    top: 22.0,
    left: 35.0,
    child: Text(
    'Chercher Utilisateur',
    style: TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 24.0,
    fontWeight: FontWeight.bold,
    color:Colors.white),

    )),
        Container(
            padding: EdgeInsets.only(left: 15, right: 15, top: 185),
          margin: EdgeInsets.only(top: 180),

            color: Colors.grey,
            child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
            Expanded(
            child: DropdownButtonHideUnderline(
            child: ButtonTheme(
            alignedDropdown: true,
            child: DropdownButton<String>(
            value: _myState,
            iconSize: 30,
            icon: (null),
            style: TextStyle(
            color: Colors.black54,
            fontSize: 16,
            ),
            hint: Text('Select State'),
            onChanged: (String newValue) {
            setState(() {
            _myState = newValue;

            print(_myState);
            });
            },
    items: statesList?.map((item) {
    return new DropdownMenuItem(
    child: new Text(item['name']),
    value: item['id'].toString(),
    );
    })?.toList() ??
    [],
    ),
    ),
    ),
    ),
    ],
    ),
    ),
    SizedBox(
    height: 30,
    ),

      ])])])]));
  }
  List statesList;
  String _myState;

  String stateInfoUrl = 'http://cleanions.bestweb.my/api/location/get_state';
  Future<String> _getStateList() async {
    await http.post(stateInfoUrl, headers: {
      'Content-Type': 'application/x-www-form-urlencoded'
    }, body: {
      "api_key": '25d55ad283aa400af464c76d713c07ad',
    }).then((response) {
      var data = json.decode(response.body);

//      print(data);
      setState(() {
        statesList = data['state'];
      });
    });
  }}**/
import "package:flutter/material.dart";
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;


class SearchUi extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<SearchUi> {
  String _mySelection;

  final String url = "https://gist.githubusercontent.com/keeguon/2310008/raw/bdc2ce1c1e3f28f9cab5b4393c7549f38361be4e/countries.json";

  List data = List(); //edited line

  Future<String> getSWData() async {
   final response = await http.get(url);

    if (response.statusCode == 200) {
      print(response.statusCode);
      return json.decode(response.body);
    } else {
      print(response.statusCode);
    }

    setState(() {
      String jsonsDataString = response.body.toString(); // toString of Response's body is assigned to jsonDataString
      data = jsonDecode(jsonsDataString);
      print(data.toString());
    });

    return "Success";
  }

  @override
  void initState() {
    super.initState();
    this.getSWData();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Hospital Management"),
      ),
      body: new Center(
        child: new DropdownButton(
          items: data.map((item) {
            return new DropdownMenuItem(
              child: new Text(item['name']),

            );
          }).toList(),
          onChanged: (newVal) {
            setState(() {
              _mySelection = newVal;
            });
          },
          value: _mySelection,
        ),
      ),
    );
  }
}