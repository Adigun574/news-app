import 'package:flutter/material.dart';
import 'package:news/screens/NavigationDrawer.dart';

class GlobalNewsScreen extends StatelessWidget {
  static const routeName = "/globalnews";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("News")),
      drawer: NavigationDrawer(),
      body: Center(
        child: Text("Global News"),
      ),
    );
  }
}
