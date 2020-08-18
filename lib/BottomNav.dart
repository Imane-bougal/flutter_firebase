import 'package:flutter/material.dart';
    import 'package:curved_navigation_bar/curved_navigation_bar.dart';
    import 'package:flutter/material.dart';

    import 'package:flutter/material.dart';
import 'package:flutter_firebase/HowTouse.dart';
import 'package:flutter_firebase/Map.dart';
import 'package:flutter_firebase/SearchContact.dart';
import 'package:flutter_firebase/contactsPage.dart';
    import 'package:permission_handler/permission_handler.dart';
    import 'package:flutter/cupertino.dart';

import 'ListofContacts.dart';
import 'ProfilePage.dart';



    class BottomNavBar extends StatefulWidget {
    @override
    _BottomNavBarState createState() => _BottomNavBarState();
    }

    class _BottomNavBarState extends State<BottomNavBar> {
    int _page = 2;
    final ProfilePage _profilePage = ProfilePage();
    final MyApp _listofContacts= MyApp();
    final SearchContact _searchContact= SearchContact();
    final Mapofcontacts _map= Mapofcontacts();
    final HowToUse _howToUse= HowToUse();
    GlobalKey _bottomNavigationKey = GlobalKey();
    Widget _showPage = new SearchContact();

    Widget _pageChooser(int page){
    switch (page){
    case 0:
    return _profilePage;
    break;
    case 1:
    return _listofContacts;
    break;
    case 2:
    return _searchContact;
    break;
    case 3:
    return _map;
    break;
    case 4:
    return _howToUse;
    break;
    default:
    return new Container(
    child: new Center(
    child: new Text('No page found '),
    ),
    );

    }
    }

    @override
    Widget build(BuildContext context) {
    return Scaffold(
    bottomNavigationBar: CurvedNavigationBar(
    key: _bottomNavigationKey,
    index: _page,
    height: 50.0,
    items: <Widget>[
    Icon(Icons.account_circle, size: 30),
    IconButton(
    icon: new Icon(Icons.contact_phone),
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

    ),
    // Icon(Icons.contact_phone,size: 30),
    Icon(Icons.search, size: 30),
    Icon(Icons.map, size: 30),
    Icon(Icons.info, size: 30),
    ],
    color: Colors.white,
    buttonBackgroundColor: Colors.white,
    backgroundColor: Colors.grey,
    animationCurve: Curves.easeInOut,
    animationDuration: Duration(milliseconds: 600),
    onTap: (int tappedIndex) {
    setState(() {
    _showPage = _pageChooser(tappedIndex);

    });
    },
    ),
    body: Container(
    color: Colors.grey,
    child: Center(
    child: _showPage,

    ),
    ));
    }
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