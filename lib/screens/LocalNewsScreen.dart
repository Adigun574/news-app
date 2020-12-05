import 'package:flutter/material.dart';
import 'package:news/screens/NavigationDrawer.dart';

class LocalNewsScreen extends StatelessWidget {
  static const routeName = "/localnews";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("News")),
      drawer: NavigationDrawer(),
      body: Center(
        child: Text("local news"),
      ),
    );
  }
}
