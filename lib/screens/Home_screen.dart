import 'package:flutter/material.dart';
import './NavigationDrawer.dart';

class HomeScreen extends StatelessWidget {
  void test() {
    print("yes");
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        drawer: NavigationDrawer(),
        body: Center(child: Text("This is home page")));
  }
}
