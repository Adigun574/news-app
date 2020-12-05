import 'package:flutter/material.dart';
import 'package:news/screens/GlobalNewsScreen.dart';
import 'package:news/screens/Home_screen.dart';
import 'package:news/screens/LocalNewsScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Flutter Demo',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      //   visualDensity: VisualDensity.adaptivePlatformDensity,
      // ),
      home: HomeScreen(),
      routes: {
        // '/':(ctx)=>HomeScreen(),
        LocalNewsScreen.routeName:(ctx)=>LocalNewsScreen(),
        GlobalNewsScreen.routeName:(ctx)=>GlobalNewsScreen()
      },
    );
  }
}
