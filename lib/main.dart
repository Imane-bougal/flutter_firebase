import 'package:flutter/material.dart';
import 'package:flutter_firebase/BottomNav.dart';
import 'package:flutter_firebase/providers/countries.dart';
import 'package:flutter_firebase/providers/phone_auth.dart';
import 'package:flutter_firebase/task.dart';
import 'package:provider/provider.dart';

import 'chat/lets_text.dart';
import 'firebase/auth/auth.dart';
import 'firebase/auth/phone_auth/get_phone.dart';
import 'home.dart';

import 'splash.dart';

/*void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    ChangeNotifierProvider<PhoneAuthDataProvider>(
      create: (_) => PhoneAuthDataProvider(),
      child: MaterialApp(home: FireApp()),
    ),
  );
}

class FireApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<PhoneAuthDataProvider>(
      builder: (_, auth, __) {
        FireBase.auth
            .currentUser()
            .then((value) => {if (value == null) {}})
            .catchError();
        if (FireBase.auth.currentUser() != null)
          return LetsChat();
        else {
          return MultiProvider(
            providers: [
              ChangeNotifierProvider(
                create: (context) => CountryProvider(),
              ),
              ChangeNotifierProvider(
                create: (context) => PhoneAuthDataProvider(),
              ),
            ],
            child: MaterialApp(
              home: PhoneAuthGetPhone(),
              debugShowCheckedModeBanner: false,
            ),
          );
        }
      },
    );
  }
}*/
void main() => runApp(MultiProvider(providers: [
      ChangeNotifierProvider(
        create: (context) => CountryProvider(),
      ),
      ChangeNotifierProvider(
        create: (context) => PhoneAuthDataProvider(),
      ),
    ], child: MyApp()));

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: SplashPage(),
        routes: <String, WidgetBuilder>{
          '/task': (BuildContext context) => TaskPage(title: 'Task'),
          '/home': (BuildContext context) => BottomNavBar(),
          '/login': (BuildContext context) => PhoneAuthGetPhone(),

        });
  }
}
