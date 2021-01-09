import 'package:flutter/material.dart';
import 'package:news/screens/LocalNewsScreen.dart';
import 'package:news/screens/NavigationDrawer.dart';
import 'package:news/screens/NewsPageScreen.dart';

class GlobalNewsScreen extends StatelessWidget {
  static const routeName = "/globalnews";

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   appBar: AppBar(
    //       title: Text(
    //     "Global News",
    //     style: TextStyle(color: Colors.white),
    //   )),
    //   drawer: NavigationDrawer(),
    //   body: Center(
    //     child: Text("Global Newss"),
    //   ),
    //   // body: NewsPageScreen()
    // );
    return NewsPageScreen('Global News',
        'https://newsapi.org/v2/everything?q=global&apiKey=3bcb03f913724a5b93bea54e181be4d9');
  }
}
