/**import 'package:flutter/material.dart';
import 'package:numberbook/seeContactsButton.dart';


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contacts Tutorial',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: MyHomePage(title: '                Contacts'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(title,
          style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color:Colors.white),),
      ),

      body: Center(
        child: SeeContactsButton(),
      ),
    );
  }
}**/



import 'package:flutter/material.dart';
import 'package:flutter_firebase/contactsPage.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:flutter/cupertino.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Future<String> LoadContacts() async{

      final PermissionStatus permissionStatus =  await _getPermission();
              if (permissionStatus == PermissionStatus.granted) {
             return(   Navigator.push(
                    context, MaterialPageRoute(builder: (context) =>  ContactsPage())));
              } else {
                //If permissions have been denied show standard cupertino alert dialog
                return(showDialog(
                    context: context,
                    builder: (BuildContext context) => CupertinoAlertDialog(
                      title: Text('Permissions error'),
                      content: Text('Please enable contacts access '
                          'permission in system settings'),
                      actions: <Widget>[
                        CupertinoDialogAction(
                          child: Text('OK'),
                          onPressed: () => Navigator.of(context).pop(),
                        )
                      ],
                    )));
              }
            }
LoadContacts();
    return Scaffold(
        appBar: AppBar(

        title: Text('title',
        style: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
        color:Colors.white),),
    ),
    body: Center(
    child:Text('lol')

    ));
  }

  //Check contacts permission
  Future<PermissionStatus> _getPermission() async {
    final PermissionStatus permission = await Permission.contacts.status;
    if (permission != PermissionStatus.granted &&
        permission != PermissionStatus.denied) {
      final Map<Permission, PermissionStatus> permissionStatus =
      await [Permission.contacts].request();
      return permissionStatus[Permission.contacts] ??
          PermissionStatus.undetermined;
    } else {
      return permission;
    }
  }
}
