import 'package:flutter/material.dart';
import 'package:news/screens/NavigationDrawer.dart';
import 'package:news/screens/TopNewsCardScreen.dart';
import 'package:news/widgets/NewsCard.dart';
import 'package:news/widgets/NewsCategories.dart';

class NewsPageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
        // Scaffold(
        //     appBar: AppBar(title: Text("News")),
        //     drawer: NavigationDrawer(),
        //     body: Column(
        Column(children: <Widget>[
      Card(
          // child: TopNewsCard(),
          ),
      Divider(),
      NewsCategory(),
      Divider(),
      Expanded(
        child: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            //Revisit if necessary
            // NewsCard(),
            // NewsCard(),
            // NewsCard(),
            // NewsCard(),
            // NewsCard(),
          ],
        ),
      ),
    ]);
    // ));
  }
}
