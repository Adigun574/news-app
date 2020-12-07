import 'package:flutter/material.dart';
import 'package:news/screens/NavigationDrawer.dart';
import 'package:news/screens/TopNewsCardScreen.dart';
import 'package:news/widgets/NewsCard.dart';
import 'package:news/widgets/NewsCategories.dart';

class LocalNewsScreen extends StatelessWidget {
  static const routeName = "/localnews";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("News")),
        drawer: NavigationDrawer(),
        body: Column(
          children: <Widget>[
            Card(
              child: TopNewsCard(),
            ),
            NewsCategory(),
            // ListView(
            //   padding: const EdgeInsets.all(8),
            //   children: <Widget>[
            //     NewsCard(),
            //     NewsCard(),
            //     NewsCard(),
            //     NewsCard(),
            //     NewsCard(),
            //   ],
            // ),
            ListView(
  padding: const EdgeInsets.all(8),
  children: <Widget>[
    Container(
      height: 50,
      color: Colors.amber[600],
      child: const Center(child: Text('Entry A')),
    ),
    Container(
      height: 50,
      color: Colors.amber[500],
      child: const Center(child: Text('Entry B')),
    ),
    Container(
      height: 50,
      color: Colors.amber[100],
      child: const Center(child: Text('Entry C')),
    ),
  ],
)
          ],
        ));
  }
}
