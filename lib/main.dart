import 'package:flutter/material.dart';
import 'package:news/screens/EntertainmentNewsScreen.dart';
import 'package:news/screens/GlobalNewsScreen.dart';
import 'package:news/screens/Home_screen.dart';
import 'package:news/screens/LocalNewsScreen.dart';
import 'package:news/screens/SportNewsScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Flutter Demo',
      theme: ThemeData(
        //   primarySwatch: Colors.blue,
        //   visualDensity: VisualDensity.adaptivePlatformDensity,
        // brightness: Brightness.dark,
        // primaryColor: Colors.redAccent[700],
        primaryColor: Colors.blue[400],
        accentColor: Colors.cyan[600],
        textTheme: TextTheme(
          bodyText2: TextStyle(
              // color: Colors.white,
              ),
        ),
      ),
      // home: HomeScreen(),
      home: LocalNewsScreen(),
      routes: {
        // '/':(ctx)=>HomeScreen(),
        LocalNewsScreen.routeName: (ctx) => LocalNewsScreen(),
        GlobalNewsScreen.routeName: (ctx) => GlobalNewsScreen(),
        SportNewsScreen.routeName: (ctx) => SportNewsScreen(),
        EntertainmentNewsScreen.routeName: (ctx) => EntertainmentNewsScreen()
      },
    );
  }
}
