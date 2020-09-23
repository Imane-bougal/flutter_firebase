import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_firebase/groups/helper/helper_functions.dart';
import 'package:flutter_firebase/groups/models/user.dart';

import 'database_service.dart';


class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;


  // create user object based on FirebaseUser
  User _userFromFirebaseUser(FirebaseUser user) {
    return (user != null) ? User(uid: user.uid) : null;
  }
  // register with email and password
  //sign out

}