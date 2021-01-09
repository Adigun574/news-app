import 'package:flutter/material.dart';
import 'package:news/screens/NewsPageScreen.dart';
import 'package:news/screens/NavigationDrawer.dart';

class SportNewsScreen extends StatelessWidget {
  static const routeName = "/sportnews";

  @override
  Widget build(BuildContext context) {
    //   return Scaffold(
    //       appBar: AppBar(
    //           title: Text(
    //         "Sport News",
    //         style: TextStyle(color: Colors.white),
    //       )),
    //       drawer: NavigationDrawer(),
    //       body: NewsPageScreen('Sport News',
    //           'https://newsapi.org/v2/everything?q=sports&apiKey=3bcb03f913724a5b93bea54e181be4d9'));
    // }
    return NewsPageScreen('Sport News',
        'https://newsapi.org/v2/everything?q=sports&apiKey=3bcb03f913724a5b93bea54e181be4d9');
  }
}
