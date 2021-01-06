import 'package:flutter/material.dart';
import 'package:news/screens/NavigationDrawer.dart';
import 'package:news/screens/NewsPageScreen.dart';

class GlobalNewsScreen extends StatelessWidget {
  static const routeName = "/globalnews";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
          "Global News",
          style: TextStyle(color: Colors.white),
        )),
        drawer: NavigationDrawer(),
        // body: Center(
        //   child: Text("Global Newss"),
        // ),
        body: NewsPageScreen()
        // body: Image.network('https://picsum.photos/250?image=9'),
        );
  }
}
