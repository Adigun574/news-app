import 'package:flutter/material.dart';
import 'package:news/screens/NavigationDrawer.dart';

class NewsDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("News title"),
      ),
      drawer: NavigationDrawer(),
      body: Text("News Details"),
    );
  }
}
