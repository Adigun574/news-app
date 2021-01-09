import 'package:flutter/material.dart';
import 'package:news/screens/NewsPageScreen.dart';
import 'package:news/screens/NavigationDrawer.dart';

class EntertainmentNewsScreen extends StatelessWidget {
  static const routeName = "/entertainmentnews";

  @override
  Widget build(BuildContext context) {
    //   return Scaffold(
    //       appBar: AppBar(
    //           title: Text(
    //         "Entertainment News",
    //         style: TextStyle(color: Colors.white),
    //       )),
    //       drawer: NavigationDrawer(),
    //       body: NewsPageScreen('Entertainment News',
    //           'https://newsapi.org/v2/everything?q=entertainment&apiKey=3bcb03f913724a5b93bea54e181be4d9'));
    // }
    return NewsPageScreen('Entertainment News',
        'https://newsapi.org/v2/everything?q=entertainment&apiKey=3bcb03f913724a5b93bea54e181be4d9');
  }
}
