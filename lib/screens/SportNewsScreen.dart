import 'package:flutter/material.dart';
import 'package:news/screens/NewsPageScreen.dart';
import 'package:news/screens/NavigationDrawer.dart';

class SportNewsScreen extends StatelessWidget {
  static const routeName = "/sportnews";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
          "Sport News",
          style: TextStyle(color: Colors.white),
        )),
        drawer: NavigationDrawer(),
        body: NewsPageScreen());
  }
}
