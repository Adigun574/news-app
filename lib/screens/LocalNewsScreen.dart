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
            Divider(),
            NewsCategory(),
            Divider(),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(8),
                children: <Widget>[
                  NewsCard(),
                  NewsCard(),
                  NewsCard(),
                  NewsCard(),
                  NewsCard(),
                ],
              ),
            ),
          ],
        ));
  }
}
