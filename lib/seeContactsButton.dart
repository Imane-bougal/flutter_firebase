import 'package:flutter/material.dart';
import 'package:flutter_firebase/contactsPage.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:flutter/cupertino.dart';


class SeeContactsButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
        minWidth: 2.0,
        height: 2.0,
        child: RaisedButton(

      padding: const EdgeInsets.all(8.0),
      textColor: Colors.white,
      color: Colors.blue,
      onPressed: () async {
        final PermissionStatus permissionStatus = await _getPermission();
        if (permissionStatus == PermissionStatus.granted) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) =>  ContactsPage()));
        } else {
          //If permissions have been denied show standard cupertino alert dialog
          showDialog(
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
                  ));
        }
      },
      child: Container(child: Text('s',  style: TextStyle(
    color: Colors.white,
    fontSize: 1.0,),
    ))));
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
